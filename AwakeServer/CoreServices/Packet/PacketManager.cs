using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Awake.CoreServices.Packet.Handlers;
using Awake.NetworkServices;

namespace Awake.CoreServices.Packet
{
    internal class PacketManager
    {
        /// <summary>
        ///     Cette méthode est appelée par le SocketHandler lorsqu'un paquet est <br/>
        ///     reçu de la part d'un client. Elle permet de rediriger le traitement <br/>
        ///     vers le bon PacketHandler.
        /// </summary>
        /// <param name="client">
        ///     Le client qui a envoyé le paquet, auquel on doit répondre.
        /// </param>
        /// <param name="packet">
        ///     Le paquet envoyé par le client.
        /// </param>
        public static void ProcessPacket(Client client, string packet) {
            switch (client.Status) {
                case ClientStatus.HC_Done:
                    if (packet.Length < 2) {
                        OutputMessage.Warning($"Wrong protocol ({client.IPAddress}) [PacketManager]");
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
                            case 'G':
                                Game.GameProcessPacket(client, packet);
                                break;
                            default:
                                OutputMessage.Error($"Missing packet route for \"{packet}\" [PacketManager]");
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
