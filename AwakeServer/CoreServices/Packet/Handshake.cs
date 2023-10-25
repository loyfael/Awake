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

        public static void ProcessHandshakePacket(Client client, string packet) {
            switch (client.Status) {
                case ClientStatus.HC_WaitingForVersion:
                    client.Version = packet;
                    client.Status = ClientStatus.HC_WaitingForCredentials;
                    break;
                case ClientStatus.HC_WaitingForCredentials:
                    string[] creds = packet.Split('\n');
                    if (creds.Length != 2) {
                        Utils.Error($"Wrong protocol while transmitting credentials ({client.IPAddress})");
                        client.Disconnect();
                    } else {
                        client.Username = creds[0];
                        client.Password = creds[1];
                        
                        Account.SendInfos(client);
                        if (Account.Login(client)) {
                            client.Status = ClientStatus.HC_Done;
                        } else {
                            client.Status = ClientStatus.HC_LoginDenied;
                        }
                    }
                    break;
            }
        }

        public static void ProcessPacket(Client client, string packet) {
            switch (packet[1]) {
                case 'D':
                    client.Disconnect();
                    break;
                default:
                    Utils.Error($"Missing packet route for \"{packet}\" (Handshake)");
                    break;
            }
        }
    }
}
