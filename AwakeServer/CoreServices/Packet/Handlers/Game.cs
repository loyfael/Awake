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
    internal class Game
    {
        /*
         * Paquets à prendre en charge :
         *
         * "G" // Game (Fight ?)
         *     "C"     this.aks.Game.onCreate(!bError, sData.substr(4));
         *     "J"     this.aks.Game.onJoin(sData.substr(3));
         *     "P"     this.aks.Game.onPositionStart(sData.substr(2));
         *     "R"     this.aks.Game.onReady(sData.substr(2));
         *     "S"     this.aks.Game.onStartToPlay();
         *     "E"     this.aks.Game.onEnd(sData.substr(2));
         *     "M"     this.aks.Game.onMovement(sData.substr(3));
         *     "c"     this.aks.Game.onChallenge(sData.substr(2));
         *     "t"     this.aks.Game.onTeam(sData.substr(2));
         *     "V"     this.aks.Game.onLeave(true, sData.substr(2));
         *     "f"     this.aks.Game.onFlag(sData.substr(2));
         *     "I"
         *         "C"    this.aks.Game.onPlayersCoordinates(sData.substr(4));
         *         "E"    this.aks.Game.onEffect(sData.substr(3));
         *         "e"    this.aks.Game.onClearAllEffect(sData.substr(3));
         *         "P"    this.aks.Game.onPVP(sData.substr(3), false);
         *     "D" // Game Data
         *         "M"    this.aks.Game.onMapData(sData.substr(4));
         *         "K"    this.aks.Game.onMapLoaded();
         *         "C"    this.aks.Game.onCellData(sData.substr(3));
         *         "Z"    this.aks.Game.onZoneData(sData.substring(3));
         *         "O"    this.aks.Game.onCellObject(sData.substring(3));
         *         "F"    this.aks.Game.onFrameObject2(sData.substring(4));
         *         "E"    this.aks.Game.onFrameObjectExternal(sData.substring(4));
         *     "d" // Fight Challenges
         *         "K"    this.aks.Game.onFightChallengeUpdate(sData.substr(4), true);
         *         "O"    this.aks.Game.onFightChallengeUpdate(sData.substr(4), false);
         *         *     this.aks.Game.onFightChallenge(sData.substr(2));
         *     "A" // Game Actions
         *         "S"    this.aks.GameActions.onActionsStart(sData.substr(3));
         *         "F"    this.aks.GameActions.onActionsFinish(sData.substr(3));
         *         *     this.aks.GameActions.onActions(sData.substr(2));
         *     "T" // Turn
         *         "S"    this.aks.Game.onTurnStart(sData.substr(3));
         *         "F"    this.aks.Game.onTurnFinish(sData.substr(3));
         *         "L"    this.aks.Game.onTurnlist(sData.substr(4));
         *         "M"    this.aks.Game.onTurnMiddle(sData.substr(4));
         *         "R"    this.aks.Game.onTurnReady(sData.substr(3));
         *     "X"     this.aks.Game.onExtraClip(sData.substr(2));
         *     "o"     this.aks.Game.onFightOption(sData.substr(2));
         *     "O"     this.aks.Game.onGameOver();
         *
         * TODO: supprimer au fur et à mesure de l'implémentation
         */
        
        /// <summary>
        ///     Permet de traiter les paquets relatifs au jeu (commençant par un 'G'). <br/>
        /// </summary>
        /// <param name="client">
        ///     Le client qui a envoyé le paquet, auquel on doit répondre.
        /// </param>
        /// <param name="packet">
        ///     Le paquet envoyé par le client. La condition <b>packet.Length >= 2</b><br/>
        ///     doit avoir été vérifiée avant d'appeler la fonction.
        /// </param>
        public static void GameProcessPacket(Client client, string packet) {
            switch (packet[1]) {
                case 'C':
                    // TODO: Handle possible errors (if any?)
                    // Réponse: "GC" + success("K" ou "E") + * + type(error if not equal to TYPE_SOLO=1)
                    client.Send("GCK_1");
                    break;
                default:
                    OutputMessage.Error($"Missing packet route for \"{packet}\" (Game)");
                    break;
            }
        }
    }
}

