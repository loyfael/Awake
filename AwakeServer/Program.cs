using System;
using System.Net;
using System.Net.Sockets;
using System.Collections;
using System.Threading;
using System.IO;

namespace Awake
{
	public class AwakeServer {

		private string BIND_HOST = "127.0.0.1";
		private int BIND_PORT = 4444;
		private int LISTEN_COUNT = 10;
		private int BUFFER_SIZE = 1024;
		private bool DEBUG = true;

		private Socket ServerSocket = new Socket( AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp );
		private bool running = false;

		List<Socket> clientPool = new List<Socket>();

		public static void Log(object msg) {
			Console.WriteLine("[{0}] {1}", DateTime.Now.ToString("HH:mm:ss"), msg);
		}

		public static void Main(string[] args) {
			AwakeServer server = new AwakeServer();

			Console.CancelKeyPress += delegate(object? sender, ConsoleCancelEventArgs e) {
				e.Cancel = true;
				server.GracefullStop();
			};

			server.Start();
		}

		public void Start()
		{
			Log("Server started.");
			running = true;
			try {
				IPAddress ipAddress = IPAddress.Parse(BIND_HOST);

				Log("Binding to " + BIND_HOST + ":" + BIND_PORT);
				ServerSocket.Bind(new IPEndPoint(ipAddress, BIND_PORT));
				ServerSocket.Listen(LISTEN_COUNT);

				Thread tProcessClients = new Thread(new ThreadStart(processClients));
				tProcessClients.Start();

				while (running) {
					Log("Waiting for client...");
					Socket client = ServerSocket.Accept();

					Log("New client: " + client.GetHashCode());
					clientPool.Add(client);
				}

				tProcessClients.Join();
			}
			catch (SocketException E) {
				Log("Error: " + E.Message);
			}
			Log("Server stopped.");
		}

		
		/*
		 * Cette méthode est exécutée dans un thread à part. Elle surveille les sockets des clients
		 * pour savoir s'ils tentent d'envoyer un paquet, et redirige le Packet vers la méthode de
		 * traitement correspondante le cas échéant.
		 */
		private void processClients() {
			List<Socket> readList = new List<Socket>();

			while (running) {

				readList.Clear();
				for (int i=0; i<clientPool.Count; i++) {
					readList.Add(clientPool[i]);
				}

				if (readList.Count > 0) {
					Socket.Select(readList, null, null, -1);

					for (int i=0; i<readList.Count; i++) {
						Socket currentSocket = readList[i];

						if (currentSocket.Available > 0) {
							int len = Math.Min(currentSocket.Available, BUFFER_SIZE);
							if (DEBUG && len==BUFFER_SIZE) Console.WriteLine("DEBUG: Maximum buffer size reached, please increase BUFFER_SIZE"); // TODO: Remove when dev is finished or if never reached

							byte[] buffer = new byte[len];
							currentSocket.Receive(buffer, buffer.Length, SocketFlags.None);
							string command = System.Text.Encoding.UTF8.GetString(buffer);
							Log(currentSocket.GetHashCode() + " >> " + command);

							// TODO: add packet routing to the right packet handler


						}
					}
				}
				Thread.Sleep(10);
			}
		}

		public void GracefullStop() {
			Log("Shutting down gracefully");

			running = false;

			for (int i=0; i<clientPool.Count; i++) {
				clientPool[i].Close();
			}
			ServerSocket.Close();
		}
	}
}