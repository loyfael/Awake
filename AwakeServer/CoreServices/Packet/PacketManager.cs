using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Awake.NetworkServices;

namespace Awake.CoreServices.Packet
{
    internal class PacketManager
    {
        /// <summary>
        /// Cette méthode est appelée par le SocketHandler lorsqu'un paquet est<br />
        /// reçu de la part d'un client. Elle permet de rediriger le traitement<br />
        /// vers le bon PacketHandler.
        /// </summary>
        /// <param name="client"></param>
        /// <param name="packet"></param>
        public static void ProcessPacket(Client client, string packet) {
            switch (client.Status) {
                case ClientStatus.HC_Done:
                    if (packet.Length < 2) {
                        OutputMessage.Warning($"Wrong protocol ({client.IPAddress})");
                        client.Disconnect();
                    } else {
                        switch (packet[0]) {
                            case 'A':
                                Account.AccountProcessPacket(client, packet);
                                break;
                            case 'H':
                                Handshake.HandshakeProcessPacket(client, packet);
                                break;
                            case 'B':
                                Basics.BasicProcessPacket(client, packet);
                                break;
                            default:
                                OutputMessage.Error($"Missing packet route for \"{packet}\"");
                                break;
                        }
                    }
                    break;

                default:
                    Handshake.ProcessHandshakePacket(client, packet);
                    break;
            }
        }
    }
}
