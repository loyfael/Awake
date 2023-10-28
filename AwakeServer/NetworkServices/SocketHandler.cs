using System;
using System.Net;
using System.Net.Sockets;
using System.Text;
using Awake.CoreServices.Packet;
using DotNetEnv;
using Awake.CoreServices.Packet.Handlers;
using Awake.Utils;

namespace Awake.NetworkServices
{
	/// <summary>
	/// 	Cette classe a pour but d'abstraire le principe de Socket, <br/>
	/// 	et permet de gérer les connexions avec les clients ainsi <br/>
	/// 	que la réception de nouveaux messages. Quand un message est <br/>
	/// 	reçu d'un Client, il est transformé en string et est envoyé <br/>
	/// 	au PacketManager, via sa fonction ProcessPacket.
	/// </summary>
    internal class SocketHandler {

        private const int BUFFER_SIZE = 1024;
		private const int LISTEN_COUNT = 10;
		private const int SELECT_TIMEOUT = 100; // Milliseconds

        private static readonly Socket ServerSocket = new( AddressFamily.InterNetwork, SocketType.Stream, ProtocolType.Tcp );
		private static Dictionary<int, Client> AllClients = new();

		/// <summary>
		/// 	Démarre la gestion des sockets, en créant deux threads différents. <br/>
		/// 	Le premier va gérer la connexion de nouveaux clients, tandis que le <br/>
		/// 	second exécute la fonction processClients pour intéragir avec les <br/>
		/// 	clients déjà connectés. 
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
		/// 	Cette méthode est exécutée dans un thread à part. Elle surveille les sockets <br/>
		/// 	des clients pour savoir s'ils tentent d'envoyer un paquet, et redirige le <br/>
		/// 	paquet vers le PacketManager.
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
					} catch (Exception e) when (e is ObjectDisposedException || e is KeyNotFoundException) {
						/* 
						 * Ce cas peut arriver à cause d'une race condition entre
						 * la lecture de AllClients.Values et le remplissage de la
						 * readList. Lors du prochain tour de boucle, le client ne
						 * devrait plus faire partie de AllClients.
						 *
						 * TODO: identifier le mauvais client et traiter les autres
						 * paquets, possibilité de DOS avec un client bien timé
						 */
						OutputMessage.Warning("ObjectDisposedException or KeyNotFoundException [SocketHandler]");

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
							OutputMessage.Debug($"Client {currentClient.ID} closed connexion.");
							currentClient.Disconnect();
						}
					}
				}
				Thread.Sleep(100);
			}
		}

		/// <summary>
		/// 	Arrête le SocketHandler en déconnectant tous les clients pour <br/>
		/// 	fermer toutes les sockets.
		/// </summary>
        public static void Stop() {
			foreach(Client client in AllClients.Values) {
				client.Disconnect();
			}
			ServerSocket.Close();
        }

		/// <summary>
		/// 	Récupère un client par son ID.
		/// </summary>
		/// <param name="id">
		/// 	L'identifiant du client.
		/// </param>
		/// <returns>
		/// 	L'objet Client associé à l'ID, ou une KeyNotFoundException.
		/// </returns>
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
