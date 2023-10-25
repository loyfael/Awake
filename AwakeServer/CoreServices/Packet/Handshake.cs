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
        /// <summary>
        /// Débute le handshake entre le serveur et le client, permettant<br />
        /// la connexion du joueur.
        /// </summary>
        /// <param name="client"></param>
        public static void StartHandshake(Client client) {
            client.Send("HC" + client.SessionKey);
            client.Status = ClientStatus.HC_WaitingForVersion;
        }

        /// <summary>
        /// Permet le processing du handshake. On récupère les informations
        /// et on vérifie si elles sont valides.
        /// </summary>
        /// <param name="client"></param>
        /// <param name="packet"></param>
        public static void ProcessHandshakePacket(Client client, string packet) {
            switch (client.Status) {
                case ClientStatus.HC_WaitingForVersion:
                    client.Version = packet;
                    client.Status = ClientStatus.HC_WaitingForCredentials;
                    break;
                case ClientStatus.HC_WaitingForCredentials:

                    string[] creds = packet.Split('\n');

                    if (creds.Length != 2) {
                        OutputMessage.Error($"Wrong protocol while transmitting credentials ({client.IPAddress})");
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

        public static void HandshakeProcessPacket(Client client, string packet) {
            switch (packet[1]) {
                case 'D':
                    client.Disconnect();
                    break;
                default:
                    OutputMessage.Error($"Missing packet route for \"{packet}\" (Handshake)");
                    break;
            }
        }
    }
}
