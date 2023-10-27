using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Awake.CoreServices.Encryption;
using Awake.DatabaseServices.Models;
using Awake.NetworkServices;

namespace Awake.CoreServices.Packet.Handlers
{
    internal class Basics
    {
        /*
         * Paquets correspondants :
         *
         * "B" // Basics
         *     "N" // Nop
         *     "A" // Authorization
         *         "T"     this.aks.Basics.onAuthorizedCommand(true, sData.substr(3));
         *         "L"     this.aks.Basics.onAuthorizedLine(sData.substr(3));
         *         "P"     this.aks.Basics.onAuthorizedCommandPrompt(sData.substr(3));
         *         "C"     this.aks.Basics.onAuthorizedCommandClear();
         *         "E"     this.aks.Basics.onAuthorizedCommand(false);
         *         "IO"    this.aks.Basics.onAuthorizedInterfaceOpen(sData.substr(4));
         *     "T"     this.aks.Basics.onReferenceTime(sData.substr(2));
         *     "D"     this.aks.Basics.onDate(sData.substr(2));
         *     "W"     this.aks.Basics.onWhoIs(!bError, sData.substr(3));
         *     "P"     this.aks.Basics.onSubscriberRestriction(sData.substr(2));
         *     "C"     this.aks.Basics.onFileCheck(sData.substr(2));
         *     "p"     this.aks.Basics.onAveragePing(sData.substr(2));
         *
         * TODO: supprimer au fur et à mesure de l'implémentation
         */

        /// <summary>
        ///     Permet de traiter les paquets de la catégorie Basic (commençant par un 'B'). <br/>
        /// </summary>
        /// <param name="client">
        ///     Le client qui a envoyé le paquet, auquel on doit répondre.
        /// </param>
        /// <param name="packet">
        ///     Le paquet envoyé par le client. La condition <b>packet.Length >= 2</b><br/>
        ///     doit avoir été vérifiée avant d'appeler la fonction.
        /// </param>
        public static void BasicProcessPacket(Client client, string packet) {
            switch (packet[1]) {
                case 'A':
                    if (client.Account.IsAdmin) {
                        // TODO: implement custom admin commands here

                        if (packet.Contains('$')) { // Commande temporaire pour aider au reverse, permet d'envoyer un paquet précis en commançant la commande par un '$'
                            client.Send(packet.Split('$')[1]);
                        }
                    } else {
                        OutputMessage.Warning($"User {client.Username} (with IP {client.IPAddress}) tried to execute \"{packet}\" without being admin.");
                    }
                    break;
                case 'D': // Get Date
                    DateTime now = DateTime.Now;
                    client.Send($"BD{now.Year}|{now.Month}|{now.Day}");
                    // client.Send("BT" + now.Ticks);
                    break;
                default:
                    OutputMessage.Error($"Missing packet route for \"{packet}\" (Basics)");
                    break;
            }
        }
    }
}

