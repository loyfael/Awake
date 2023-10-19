using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Awake.CoreServices.Encryption;
using Awake.NetworkServices;

namespace Awake.CoreServices.Packet
{
    internal class Handshake
    {
        public static void StartHandshake(Client client) {
            client.Send("HC" + client.SessionKey);
            client.Status = ClientStatus.HC_WaitingForVersion;
        }

        public static void ProcessPacket(Client client, string packet) {
            switch (client.Status) {
                case ClientStatus.HC_WaitingForVersion:
                    client.Version = packet;
                    client.Status = ClientStatus.HC_WaitingForUsername;
                    break;
                case ClientStatus.HC_WaitingForUsername:
                    client.Username = packet;
                    client.Status = ClientStatus.HC_WaitingForPassword;
                    break;
                case ClientStatus.HC_WaitingForPassword:
                    client.Password = packet;
                    client.Status = ClientStatus.HC_Done;
                    break;
            }
        }
    }
}
