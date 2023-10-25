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
using DotNetEnv;

namespace Awake.NetworkServices
{
    internal class SocketHandler {

        private const int BUFFER_SIZE = 1024;
		private const int LISTEN_COUNT = 10;
		private const int SELECT_TIMEOUT = 100; // Milliseconds

        private static readonly Socket ServerSocket = new( AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp );
		private static Dictionary<int, Client> AllClients = new();

		/// <summary>
		/// Démarrer le socket de l'application
		/// </summary>
		public static void Start() {
			try {
				string host = Env.GetString("NETWORK_BIND_HOST");
				int port = Env.GetInt("NETWORK_BIND_PORT");
				
				OutputMessage.Log("Binding to " + host + ":" + port);
				IPAddress ipAddress = IPAddress.Parse(host);

				ServerSocket.Bind(new IPEndPoint(ipAddress, port));
				ServerSocket.Listen(LISTEN_COUNT);

				Thread tProcessClients = new Thread(new ThreadStart(processClients));
				tProcessClients.Start();

				while (AwakeServer.isRunning()) {
					OutputMessage.Debug("Waiting for new client...");
					Socket clientSocket = ServerSocket.Accept(); // TODO: change to non-blocking to better handle gracefull stop ?
                    Client client = new Client(clientSocket);

					OutputMessage.Log($"New client: {client.ID} from {client.IPAddress}");
					Handshake.StartHandshake(client);
					AllClients.Add(client.ID, client);
				}

				tProcessClients.Join();
			}
			catch (SocketException E) {
				OutputMessage.Log("Error: " + E.Message);
			}
		}

		
		/// <summary>
		/// Cette méthode est exécutée dans un thread à part. Elle surveille les sockets</br>
		/// des clients pour savoir s'ils tentent d'envoyer un paquet, et redirige le</br>
		/// paquet vers le PacketManager.
		/// </summary>
		private static void processClients() {
			List<Socket> readList = new();

			while (AwakeServer.isRunning()) {

				readList.Clear();
				foreach (Client client in AllClients.Values) {
					readList.Add(client.Socket);
				}

				if (readList.Count > 0) {
					try {
						Socket.Select(readList, null, null, SELECT_TIMEOUT);
					} catch (ObjectDisposedException) {
						/* 
						 * Ce cas peut arriver à cause d'une racing condition entre
						 * la lecture de AllClients.Values et le remplissage de la
						 * readList. Lors du prochain tour de boucle, le client ne
						 * devrait plus faire partie de AllClients.
						 *
						 * TODO: identifier le mauvais client et traiter les autres
						 * paquets, possibilité de DOS avec un client bien timé
						 */

						Thread.Sleep(10);
						continue;
					}

					for (int i=0; i<readList.Count; i++) {
						Client currentClient = GetClientByID(readList[i].GetHashCode());
						Socket cSocket = currentClient.Socket;

						if (cSocket.Available > 0) {
							int len = Math.Min(cSocket.Available, BUFFER_SIZE);
							if (len==BUFFER_SIZE) OutputMessage.Debug("Maximum buffer size reached, please increase BUFFER_SIZE"); // TODO: Remove when dev is finished or if never reached

							byte[] buffer = new byte[len];
							cSocket.Receive(buffer, buffer.Length, SocketFlags.None); // TODO: Move Receive logic to Client class ?
							string sBuffer = Encoding.UTF8.GetString(buffer);
							
							string[] packets = sBuffer.Split(new string[] {"\0", "\n\0"}, StringSplitOptions.RemoveEmptyEntries);

							foreach (string packet in packets) {
								OutputMessage.Debug(currentClient.ID + " >> " + packet.Replace("\n", " \\n "));
								PacketManager.ProcessPacket(currentClient, packet);
							}
						} else {
							OutputMessage.Log("Client disconnected: " + currentClient.ID);
							currentClient.Disconnect();
						}
					}
				}
				Thread.Sleep(100);
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

		public static void RemoveClientByID(int id) {
			if (AllClients.ContainsKey(id)) {
				AllClients.Remove(id);
			}
		}

    }
}
