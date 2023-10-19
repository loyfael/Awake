using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;
using Awake.CoreServices.Encryption;

namespace Awake.NetworkServices
{
    internal enum ClientStatus {
        HC_WaitingForVersion,
        HC_WaitingForUsername,
        HC_WaitingForPassword,
        HC_Done
    }

    internal class Client
    {
        public ClientStatus Status {
            set => Status = value;
            get => Status;
        }

        public Socket Socket { // Socket utilisée pour parler au client
            private set => Socket = value;
            get => Socket;
        }

        public int ID { // ID temporaire assigné au client (change à chaque connexion)
            private set => ID = value;
            get => ID;
        }

        public string SessionKey { // TODO: discuss implementation and crypto
            private set => SessionKey = value;
            get => SessionKey;
        }

        public string Username { set => Username = value; get => Username; }
        public string Password { set => Password = value; get => Password; }
        public string Version { set => Version = value; get => Version; }


        public Client(Socket socket) {
            Socket = socket;
            ID = socket.GetHashCode();
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
