using System;
using System.Net;
using System.Net.Sockets;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Awake.CoreServices;
using Awake.CoreServices.Packet;
using System.Net.NetworkInformation;

namespace Awake.NetworkServices
{
    internal class SocketHandler {

        private const int BUFFER_SIZE = 1024;
		private const int LISTEN_COUNT = 10;
		private const int SELECT_TIMEOUT = 100; // Milliseconds

        private static Socket ServerSocket = new Socket( AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp );
		private static Dictionary<int, Client> AllClients = new Dictionary<int, Client>();


		public static void Start() {
			try {
				Utils.Log("Binding to " + AppConfig.NETWORK_BIND_HOST + ":" + AppConfig.NETWORK_BIND_PORT);
				IPAddress ipAddress = IPAddress.Parse(AppConfig.NETWORK_BIND_HOST);

				ServerSocket.Bind(new IPEndPoint(ipAddress, AppConfig.NETWORK_BIND_PORT));
				ServerSocket.Listen(LISTEN_COUNT);

				Thread tProcessClients = new Thread(new ThreadStart(processClients));
				tProcessClients.Start();

				while (AwakeServer.isRunning()) {
					Utils.Debug("Waiting for new client...");
					Socket clientSocket = ServerSocket.Accept(); // TODO: change to non-blocking to better handle gracefull stop
                    Client client = new Client(clientSocket);

					Utils.Log("New client: " + client.GetID());
					AllClients.Add(client.GetID(), client);
				}

				tProcessClients.Join();
			}
			catch (SocketException E) {
				Utils.Log("Error: " + E.Message);
			}
		}

		
		/*
		 * Cette méthode est exécutée dans un thread à part. Elle surveille les sockets
		 * des clients pour savoir s'ils tentent d'envoyer un paquet, et redirige le
		 * paquet vers le PacketManager.
		 */
		private static void processClients() {
			List<Socket> readList = new List<Socket>();

			while (AwakeServer.isRunning()) {

				readList.Clear();
				foreach (Client client in AllClients.Values) {
					readList.Add(client.GetSocket());
				}

				if (readList.Count > 0) {
					Socket.Select(readList, null, null, SELECT_TIMEOUT);

					for (int i=0; i<readList.Count; i++) {
						Client currentClient = GetClientByID(readList[i].GetHashCode());
						Socket cSocket = currentClient.GetSocket();

						if (cSocket.Available > 0) {
							int len = Math.Min(cSocket.Available, BUFFER_SIZE);
							if (len==BUFFER_SIZE) Utils.Debug("Maximum buffer size reached, please increase BUFFER_SIZE"); // TODO: Remove when dev is finished or if never reached

							byte[] buffer = new byte[len];
							cSocket.Receive(buffer, buffer.Length, SocketFlags.None); // TODO: Move Receive logic to Client class ?
							string packet = Encoding.UTF8.GetString(buffer);
							Utils.Log(currentClient.GetID() + " >> " + packet);

							PacketManager.ProcessPacket(currentClient, packet);

						} else {
							Utils.Log("Client disconnected: " + currentClient.GetID());
							currentClient.Disconnect();
							AllClients.Remove(currentClient.GetID());
						}
					}
				}
				Thread.Sleep(10);
			}
		}

        public static void StopServer() {
			foreach(Client client in AllClients.Values) {
				client.Disconnect();
			}
			ServerSocket.Close();
        }

		public static Client GetClientByID(int id) {
			return AllClients[id];
		}

    }
}