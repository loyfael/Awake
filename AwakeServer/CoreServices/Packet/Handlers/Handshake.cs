using System;
using Awake.NetworkServices;
using Awake.Utils;

namespace Awake.CoreServices.Packet.Handlers
{
    internal class Handshake
    {
        /// <summary>
        ///     Débute le handshake entre le serveur et le client, permettant <br/>
        ///     la connexion du joueur.
        /// </summary>
        /// <param name="client">
        ///     Le client avec qui on veut réaliser le handshake.
        /// </param>
        public static void StartHandshake(Client client) {
            client.Send("HC" + client.SessionKey);
            client.Status = ClientStatus.HC_WaitingForVersion;
        }

        /// <summary>
        ///     Permet le traitement du handshake. On récupère les informations <br/>
        ///     et on vérifie si elles sont valides. Cette fonction implémente un <br/>
        ///     système de statut pour garder une trace de l'avancée du processus.
        /// </summary>
        /// <param name="client">
        ///     Le client qui a envoyé le paquet.
        /// </param>
        /// <param name="packet">
        ///     Le paquet envoyé par le client. La condition <b>packet.Length >= 2</b><br/>
        ///     doit avoir été vérifiée avant d'appeler la fonction.
        /// </param>
        public static void ProcessHandshakePacket(Client client, string packet) {
            // TODO: Renommer la fonction, parce que maintenant on a ProcessHandshakePacket et HandshakeProcessPacket
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
                            client.Disconnect();
                        }
                    }
                    break;
            }
        }


        /*
         *   Paquets correspondants : 
         *
         *   "H" // Handshake
         *       "C"      this.aks.onHelloConnectionServer(sData.substr(2));
         *       "G"      this.aks.onHelloGameServer(sData.substr(2));
         *        *       this.aks.disconnect(false, true);
         */

        /// <summary>
        ///     Permet de traiter les paquets relatifs à la connexion avec le client, une fois que le<br/>
        ///     handshake est terminé (commençant par un 'H').
        /// </summary>
        /// <description>
        ///     tetstqsmdlqsld
        /// </description>
        /// <param name="client">
        ///     Le client qui a envoyé le paquet, auquel on doit répondre.
        /// </param>
        /// <param name="packet">
        ///     Le paquet envoyé par le client. La condition <b>packet.Length >= 2</b><br/>
        ///     doit avoir été vérifiée avant d'appeler la fonction.
        /// </param>
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
