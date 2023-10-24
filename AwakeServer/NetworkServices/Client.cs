using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using Awake.CoreServices;
using Awake.CoreServices.Encryption;

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


        public Client(Socket socket) {
            Socket = socket;
            ID = socket.GetHashCode();

            if (socket.RemoteEndPoint != null) {
                IPAddress = ((IPEndPoint) socket.RemoteEndPoint).Address.ToString();
            }

            SessionKey = ClientKeyGenerator.GenerateKey();
        }

        public void Send(string packet) {
            Socket.Send(Encoding.UTF8.GetBytes(packet));
        }

        public void Disconnect() {
            Send("HD"); // TODO: Send Disconnect packet "HD"
            Socket.Close();
        }
    }
}
