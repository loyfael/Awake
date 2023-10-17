using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Sockets;
using System.Text;
using System.Threading.Tasks;

namespace Awake.NetworkServices
{
    internal class Client
    {
        private Socket socket; // Socket utilisée pour parler au client
        private int ID; // ID temporaire assigné au client

        public Client(Socket socket) {
            this.socket = socket;
            this.ID = socket.GetHashCode();
        }

        public void Send(string packet) {
            this.socket.Send(Encoding.UTF8.GetBytes(packet));
        }

        public void Disconnect() {
            Send("HD"); // Send Disconnect packet "HD"
            socket.Close();
        }

        public int GetID() {
            return ID;
        }

        public Socket GetSocket() {
            return socket;
        }
    }
}
