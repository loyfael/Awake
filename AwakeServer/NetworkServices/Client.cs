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

    /// <summary>
    ///     Cette classe permet de gérer une connexion avec un client. Elle <br/>
    ///     ajoute une abstraction de la notion de socket et permet de stocker <br/>
    ///     diverses informations transmises par le client, ainsi que son état.
    /// </summary>
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
        ///     Constructeur pour la classe Client.
        /// </summary>
        /// <param name="socket">
        ///     La socket associée à la connexion.
        /// </param>
        public Client(Socket socket) {
            Socket = socket;
            ID = socket.GetHashCode();

            if (socket.RemoteEndPoint != null) {
                IPAddress = ((IPEndPoint) socket.RemoteEndPoint).Address.ToString();
            }

            SessionKey = ClientKeyGenerator.GenerateKey();
        }

        /// <summary>
        ///     Envoie un packet au client.
        /// </summary>
        /// <param name="packet">
        ///     Le packet à envoyer.
        /// </param>
        public void Send(string packet) {
            OutputMessage.Debug(ID + " << " + packet);
            Socket.Send(Encoding.UTF8.GetBytes(packet + '\0'));
        }

        /// <summary>
        ///     Déconnecte le joueur, ferme et supprime la connexion.
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
