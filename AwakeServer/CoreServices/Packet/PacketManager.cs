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
        /*
         * Cette méthode est appelée par le SocketHandler lorsqu'un paquet est
         * reçu de la part d'un client. Elle permet de rediriger le traitement
         * vers le bon PacketHandler.
         */
        public static void ProcessPacket(Client client, string packet) {
            switch (client.Status) {
                case ClientStatus.HC_Done:
                    if (packet.Length < 2) {
                        Utils.Warning($"Wrong protocol ({client.IPAddress})");
                        client.Disconnect();
                    } else {
                        switch (packet[0]) {
                            case 'A':
                                Account.ProcessPacket(client, packet);
                                break;
                            case 'H':
                                Handshake.ProcessPacket(client, packet);
                                break;
                            case 'B':
                                Basics.ProcessPacket(client, packet);
                                break;
                            default:
                                Utils.Error($"Missing packet route for \"{packet}\"");
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
