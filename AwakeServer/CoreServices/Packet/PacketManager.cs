﻿using System;
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
            // TODO: Add packet processing
        }
    }
}
