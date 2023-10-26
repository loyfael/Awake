using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using Awake.CoreServices;
using Awake.DatabaseServices.Models;
using Awake.CoreServices.Encryption;
using Awake.CoreServices.Packet;

namespace Awake.NetworkServices
{
    internal enum ClientStatus {
        HC_WaitingForVersion,
        HC_WaitingForCredentials,
        HC_LoginDenied,
        HC_Done
    }

    internal class Client
    {
        public ClientStatus Status;  // Statut actuel du client
        public Socket Socket;        // Socket utilisée pour parler au client
        public int ID;               // ID temporaire assigné au client (change à chaque connexion)
        public string SessionKey;    // TODO: discuss implementation and crypto
        public string Username = ""; // Username transmis par le client
        public string Password = ""; // Stocké sous la forme hash( hash(Password + SessionKey) )
        public string Version = "unknown";
        public string IPAddress = "unknown";
        [AllowNull] public DBAccount Account = null;

        /// <summary>
        /// À commenter
        /// </summary>
        /// <param name="socket"></param>
        public Client(Socket socket) {
            Socket = socket;
            ID = socket.GetHashCode();

            if (socket.RemoteEndPoint != null) {
                IPAddress = ((IPEndPoint) socket.RemoteEndPoint).Address.ToString();
            }

            SessionKey = ClientKeyGenerator.GenerateKey();
        }

        /// <summary>
        /// Permet d'envoyer une réponse au client, s'agissant en
        /// l'occurence d'un packet.
        /// </summary>
        /// <param name="packet"></param>
        public void Send(string packet) {
            OutputMessage.Debug(ID + " << " + packet);
            Socket.Send(Encoding.UTF8.GetBytes(packet + '\0'));
        }

        /// <summary>
        /// Permet de déconnecter le joueur
        /// </summary>
        public void Disconnect() {
            if (Socket.Connected) {
                Send("HD"); // On notifie la déconnexion au client
            }

            Socket.Close();
            OutputMessage.Log("Client disconnected: " + ID);
            SocketHandler.RemoveClientByID(ID);
        }
    }
}
