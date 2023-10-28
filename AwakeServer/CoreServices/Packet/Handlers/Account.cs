using System;
using Awake.DatabaseServices.Models;
using Awake.NetworkServices;
using Awake.Utils;

namespace Awake.CoreServices.Packet.Handlers
{
    internal class Account
    {
        /// <summary>
        ///     Permet de logger le joueur et de vérifier si la connexion <br/>
        ///     se passe sans erreurs.
        /// </summary>
        /// <param name="client">
        ///     Le client à connecter. Les champs <b>client.Username</b> et <b>client.Password</b> ont déjà été <br/>
        ///     remplis avec les informations correspondantes.
        /// </param>
        /// <returns>
        ///     true si le client est connecté avec succès, false sinon.
        /// </returns>
        public static bool Login(Client client) {
            char reason = 'n';
            char success = 'K'; // 'E' sinon
            char isAdmin = '1'; // '0' sinon
            bool logged = true; // TODO: add DB fetch, check and notify user, update client.Account.isLogged if true

            /*
                Raisons possibles de refuser une connexion :
                'n' : Connexion non terminée
                'a' : Déjà connecté
                'c' : Déjà connecté à un serveur de jeu
                'v'+version : Mauvaise version du client, ajouter la nouvelle version au paquet
                'p' : Compte invalide (pas un joueur)
                'b' : Compte banni
                'd' : "Tu viens de déconnecter un personnage utilisant déjà ce compte."
                'k'+$"{j}|{m}|{s}" : Compte banni temporairement (kick), ajouter jours|mois|secondes au paquet
                'w' : Serveur complet
                'o' : Vieux compte (inutile)
                'e' : Vieux compte (inutile)
                'm' : Compte en maintenance
                'r' : Nouveau compte, choisir un pseudo
                's' : Pseudo déjà utilisé
                'f' : Nom d'utilisateur ou mot de passe incorrect (avec lien vers le support, inutile ?)
                 *  : Nom d'utilisateur ou mot de passe incorrect
            */

            if (logged) {
                client.Send("Al" + success + isAdmin);
                
                // TODO: Après un login réussi, il faut envoyer la question secrète liée au
                //  compte si on veut qu'elle soit demandée quand on supprime un personnage (optionnel)
                // client.Send("AQ" + questionSecrete.Replace(" ", "+"));
            } else {
                client.Send("Al" + success + reason);
                OutputMessage.Warning($"Wrong password attempt for {client.Username} ({client.IPAddress})"); // TODO: Gérer le nombre d'essais restants ?
            }

            return logged;
        }

        /// <summary>
        ///     Envoyer les statistiques d'un personnage à un client donné.
        /// </summary>
        /// <param name="client">
        ///     Le client auquel on envoie les statistiques.
        /// </param>
        /// <param name="character">
        ///     Le personnage en question.
        /// </param>
        public static void SendStats(Client client, DBCharacter character) {
            /* 
             * Réponse à fournir :
             *        -------- XP ---------                                               alignement/fakeAlignment  ----------------Rank----------------
             * "As" + XpCurrent,XpMin,XpMax | Kamas | PtsCaractéristiques? | PtsSpells? |   nIndex(1~1), nValue,    nValue, nHonour, nDisgrace, bEnabled | LP,LPMax | Energy,EnergyMax | Initiative | Discernement
             *   | base, stuff, don, buff // PA
             *   | base, stuff, don, buff // PM
             *   | base, stuff, don, buff // Force
             *   | base, stuff, don, buff // Vitalité
             *   | base, stuff, don, buff // Sagesse
             *   | base, stuff, don, buff // Chance
             *   | base, stuff, don, buff // Agilité
             *   | base, stuff, don, buff // Intelligence
             *   | base, stuff, don, buff // PO
             *   | base, stuff, don, buff // Invocations max
             *   | base, stuff, don, buff
             *   | base, stuff, don, buff
             *   | base, stuff, don, buff
             *   | base, stuff, don, buff
             *   | base, stuff, don, buff
             *   | base, stuff, don, buff
             *   | base, stuff, don, buff
             *   | base, stuff, don, buff
             *   | base, stuff, don, buff // Crit Hit Bonus
             *   | base, stuff, don, buff // ResPA ?
             *   | base, stuff, don, buff // ResPM ?
             *   | base, stuff, don, buff // ResNeutre ?
             *   | base, stuff, don, buff // ResNeutre ?
             *   | base, stuff, don, buff // ResNeutre ?
             *   | base, stuff, don, buff // ResNeutre ?
             *   | base, stuff, don, buff // ResTerre ?
             *   | base, stuff, don, buff // ResTerre ?
             *   | base, stuff, don, buff // ResTerre ?
             *   | base, stuff, don, buff // ResTerre ?
             *   | base, stuff, don, buff // ResEau ?
             *   | base, stuff, don, buff // ResEau ?
             *   | base, stuff, don, buff // ResEau ?
             *   | base, stuff, don, buff // ResEau ?
             *   | base, stuff, don, buff // ResAir ?
             *   | base, stuff, don, buff // ResAir ?
             *   | base, stuff, don, buff // ResAir ?
             *   | base, stuff, don, buff // ResAir ?
             *   | base, stuff, don, buff // ResFeu ?
             *   | base, stuff, don, buff // ResFeu ?
             *   | base, stuff, don, buff // ResFeu ?
             *   | base, stuff, don, buff // ResFeu ?
             *
             * TODO: supprimer ce bloc horrible
             */

            // TODO: Fetch everything from db
            client.Send("As1,0,10|1000|5|1|1~1,1,1,1,0,0|10,10|50,100|1000|100" + string.Concat(Enumerable.Repeat("|1,0,0,0", 41)));
        }

        /// <summary>
        ///     Récupérer et envoyer les informations relatives au compte du client, ainsi que les <br/>
        ///     différents serveurs capables de traiter sa demande de connexion. <br/>
        ///     <br/>
        ///     TODO: Si cette fonction n'est pas appelée plusieurs fois, peut-être qu'elle est inutile ?
        /// </summary>
        /// <param name="client">
        ///     Le client auquel on envoie les informations.
        /// </param>
        public static void SendInfos(Client client) {
            // TODO: fetch account from db and fill client.Account
            client.Account = new DBAccount {
                ID = 0,
                Name = client.Username,
                IsAdmin = true,
                Characters = new Dictionary<int, DBCharacter> {
                    { 
                        100,
                        new DBCharacter {
                            ID = 100,
                            Sex = DBCharacter.CharacterSex.Male,
                            Name = "Test Character",
                            Level = 999,
                            GfxID = 10,
                            Accessories = "8,4,,A,C"
                        }
                    },
                    {
                        101,
                        new DBCharacter {
                            ID = 101,
                            Sex = DBCharacter.CharacterSex.Male,
                            Name = "Bouftou",
                            Level = 1,
                            GfxID = 1001
                        }
                    }
                }
            };

            client.Send("Ad" + client.Account.Name); // Account Pseudo
            client.Send("Ac" + client.Account.Community); // Community ID

            client.Send("AH" + "1;1;0;1");  // Hosts nID;nState;nCompletion;bCanLog (separator '|') (permet d'avoir plusieurs serveurs avec du load balancing)
        }

        /// <summary>
        ///     Permet d'envoyer à un client la liste des personnages de son compte.
        /// </summary>
        /// <param name="client">
        ///     Le client auquel envoyer la liste.
        /// </param>
        public static void SendCharacterList(Client client) {
            string[] characters = client.Account.GetAllCharacters().Select(character => character.ToCharacterListString()).ToArray();
            string characterList = $"{characters.Length}|" + string.Join<string>("|", characters);
            client.Send("AL_" + characterList);
        }

        /// <summary>
        ///     Permet de traiter les paquets relatifs au compte (commençant par un 'A'). <br/>
        /// </summary>
        /// <param name="client">
        ///     Le client qui a envoyé le paquet, auquel on doit répondre.
        /// </param>
        /// <param name="packet">
        ///     Le paquet envoyé par le client. La condition <b>packet.Length >= 2</b><br/>
        ///     doit avoir été vérifiée avant d'appeler la fonction.
        /// </param>
        public static void AccountProcessPacket(Client client, string packet) {
            switch (packet[1]) {
                case 'f': // Get Queue
                    // Réponse : "Af" + position|totalAbo|totalNonAbo|subscriber|queueID
                    
                    // TODO: Gérer les files d'attente
                       // client.Send("Af" + "16|0|20|0|0");
                    break;

                case 'L': // Character List
                    /*
                     * Réponse : "AL" + bSuccess(inutilisé) + sExtraData
                     * Format de sExtraData : <characterCount> | ID;Name;level;gfxID;color1;color2;color3;color4;color5;accessories;merchant;serverID;isDead;deathCount;lvlMax
                     */
                    
                    SendCharacterList(client);
                    break;

                case 'S': // Select character
                    // Réponse : "AS" + success('E' ou 'K') + '_' + $"{ID}|{name}|{level}|{guild}|{sex}|{gfxID}|{color1}|{color2}|{color3}|{color4}|{color5}|{items}"
                    string sCharID = packet.Remove(0,2);
                    if (client.SelectedCharacter == null) {
                        if (int.TryParse(sCharID, out int charID)) {
                            try {
                                DBCharacter character = client.Account.GetCharacterByID(charID);
                                client.SelectedCharacter = character;
                                client.Send("ASK_" + character.ToGameString());
                            } catch (KeyNotFoundException) {
                                OutputMessage.Warning($"Client {client.ID} asked for a character he doesn't have [Account]");
                                client.Send("ASE");
                                client.Disconnect();
                            }
                        } else {
                            if (sCharID == "undefined") {
                                SendCharacterList(client);
                            } else {
                                OutputMessage.Warning($"Could not parse {sCharID} [Account]");
                                client.Send("ASE");
                                client.Disconnect();
                            }
                        }
                    } else {
                        OutputMessage.Warning($"Client {client.ID} tried to select another character [Account]");
                        client.Send("ASE");
                        client.Disconnect();
                    }
                    break;

                case 'A': // Add character
                    // Format du paquet à parser: "AA" sName "|" nClass "|" nSex "|" nColor1 "|" nColor2 "|" nColor3 "|" nColor4 "|" nColor5 "|1|" nHairCut

                    /*
                     * Format de réponse : "AA" + success('K' ou 'E') + reason
                     * 
                     * Raisons de refuser la création d'un personnage:
                     *  's' : SUBSCRIPTION_OUT (inutile)
                     *  'f' : "Le nombre maximum de personnages est atteint sur ton compte."
                     *  'a' : "Ce nom n\'est pas disponible."
                     *  'n' : "Le nom du personnage est incorrect." // TODO: voir dofus.utils.nameChecker.rules.NameCheckerCharacterNameRules pour les règles associées
                     */

                    break;

                default:
                    OutputMessage.Error($"Missing packet route for \"{packet}\" [Account]");
                    break;
            }
        }
    }
}

