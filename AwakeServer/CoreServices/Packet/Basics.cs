using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Awake.CoreServices.Encryption;
using Awake.DatabaseServices.Models;
using Awake.NetworkServices;

namespace Awake.CoreServices.Packet
{
    internal class Basics
    {
        /*
         * Paquets à prendre en charge :
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
         */

         // TODO: Soit plus explicite sur le nommage de tes méthodes si possibles
         // Et pense à les documenter en mettant un triple ///, cela m'aidera
         // dans la globalité du projet ^^ (je te réécrit ceci au cas échéant eheh)
        public static void BasicProcessPacket(Client client, string packet) {
            switch (packet[1]) {
                case 'A':
                    if (client.Account.isAdmin) {
                        // TODO: implement custom admin commands here
                        client.Send(packet.Split('$')[1]);
                    } else {
                        OutputMessage.Warning($"User {client.Username} (with IP {client.IPAddress}) tried to execute \"{packet}\" without being admin.");
                    }
                    break;
                default:
                    OutputMessage.Error($"Missing packet route for \"{packet}\" (Basics)");
                    break;
            }
        }
    }
}

