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
    internal class Account
    {
        /*
         * Raisons possibles de refuser une connexion :
         *   'n' : Connexion non terminée
         *   'a' : Déjà connecté
         *   'c' : Déjà connecté à un serveur de jeu
         *   'v'+version : Mauvaise version du client, ajouter la nouvelle version au paquet
         *   'p' : Compte invalide (pas un joueur)
         *   'b' : Compte banni
         *   'd' : "Tu viens de déconnecter un personnage utilisant déjà ce compte."
         *   'k'+$"{j}|{m}|{s}" : Compte banni temporairement (kick), ajouter jours|mois|secondes au paquet
         *   'w' : Serveur complet
         *   'o' : Vieux compte (inutile)
         *   'e' : Vieux compte (inutile)
         *   'm' : Compte en maintenance
         *   'r' : Nouveau compte, choisir un pseudo
         *   's' : Pseudo déjà utilisé
         *   'f' : Nom d'utilisateur ou mot de passe incorrect (avec lien vers le support, inutile ?)
         *    *  : Nom d'utilisateur ou mot de passe incorrect
         */
        public static bool Login(Client client) {
            char reason = 'n';
            char success = 'K'; // 'E' sinon
            char isAdmin = '1'; // '0' sinon
            bool logged = true; // TODO: add DB fetch, check and notify user, update client.Account.isLogged if true

            if (logged) {
                client.Send("Al" + success + isAdmin);
                
                // TODO: Après un login réussi, il faut envoyer la question secrète liée au
                //  compte si on veut qu'elle soit demandée quand on supprime un personnage (optionnel)
                // client.Send("AQ" + questionSecrete.Replace(" ", "+"));
            } else {
                client.Send("Al" + success + reason);
                Utils.Warning($"Wrong password attempt for {client.Username} ({client.IPAddress})"); // TODO: Gérer le nombre d'essais restants ?
                client.Disconnect(); // TODO: peut-être que c'est pas nécessaire ?
            }

            return logged;
        }

        public static void SendInfos(Client client) {
            // TODO: fetch account from db and fill client.Account
            client.Account = new DBAccount(0, client.Username, true);

            client.Send("Ad" + client.Account.Name); // Account Pseudo
            client.Send("Ac" + client.Account.Community); // Community ID

            // TODO: Gérer les files d'attente
            client.Send("AH" + "1;1;0;1");  // Hosts nID;nState;nCompletion;bCanLog (separator '|') (permet d'avoir plusieurs serveurs avec du load balancing)
            // client.Send("Af" + "16|0|20|0|0"); // S'il y a une file d'attente : position|totalAbo|totalNonAbo|subscriber|queueID
        }

        public static void ProcessPacket(Client client, string packet) {
            switch (packet[1]) {
                case 'f': // Get Queue
                    // TODO
                    break;
                case 'L': // Character List
                    break;
            }
        }
    }
}

