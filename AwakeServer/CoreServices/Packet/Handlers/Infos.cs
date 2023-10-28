using System;
using Awake.NetworkServices;
using Awake.Utils;

namespace Awake.CoreServices.Packet.Handlers
{
    internal class Infos {

        /// <summary>
        ///     Permet de traiter les paquets relatifs aus informations (commençant par un 'I'). <br/>
        /// </summary>
        /// <param name="client">
        ///     Le client qui a envoyé le paquet, auquel on doit répondre.
        /// </param>
        /// <param name="packet">
        ///     Le paquet envoyé par le client. La condition <b>packet.Length >= 2</b><br/>
        ///     doit avoir été vérifiée avant d'appeler la fonction.
        /// </param>
        public static void InfosProcessPacket(Client client, string packet) {
            switch (packet[1]) {
                case 'r': // Screen resolution infos
                    string[] resolution = packet.Remove(0,2).Split(';');
                    if (resolution.Length >= 3 && 
                        Parser.ParseIntOrDisconnect(client, resolution[0], out int x) &&
                        Parser.ParseIntOrDisconnect(client, resolution[1], out int y) &&
                        Parser.ParseIntOrDisconnect(client, resolution[2], out int mode))
                            client.SetResolution(x,y,mode);
                    break;
            }
        }
    }
}

