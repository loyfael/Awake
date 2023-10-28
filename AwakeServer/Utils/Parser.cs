using System;
using Awake.NetworkServices;

namespace Awake.Utils
{
    internal class Parser {

        /// <summary>
        ///     Cette fonction permet de transformer un string en int en <br/>
        ///     prenant en charge les potentielles erreurs.
        /// </summary>
        /// <param name="client">
        ///     Le client qui a envoyé le paquet. S'il y a une erreur, le client est déconnecté.
        /// </param>
        /// <param name="sNumber">
        ///     La chaîne de caractères à parser.
        /// </param>
        /// <param name="iNumber">
        ///     L'entier résultant de la conversion.
        /// </param>
        /// <returns>
        ///     La fonction renvoie true s'il n'y a pas eu d'erreur, et false sinon.
        /// </returns>
        public static bool ParseIntOrDisconnect(Client client, string sNumber, out int iNumber) {
            if (int.TryParse(sNumber, out iNumber)) {
                return true;
            } else {
                OutputMessage.Warning($"Could not parse \"{sNumber}\"");
                client.Disconnect();
                return false;
            }
        }
    }

}

