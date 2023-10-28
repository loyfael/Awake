using System;

namespace Awake.DatabaseServices.Models
{
    /// <summary>
    ///     Cette classe représente une entité compte, tel qu'elle est stockée dans la base de <br/>
    ///     données. Elle permet de faciliter la récupération de données et de faire l'interface entre la DB et <br/>
    ///     le reste du serveur.
    /// </summary>
    internal class DBAccount
    {
        public int ID;
        public string? Name;
        public int Community = 0;
        public bool IsAdmin = false;
        public bool IsLogged = false;
        public Dictionary<int, DBCharacter> Characters = new();

        /// <summary>
        ///     Récupérer tout les personnages d'un compte.
        /// </summary>
        /// <returns>
        ///     La liste de DBCharacters
        /// </returns>
        public IEnumerable<DBCharacter> GetAllCharacters() {
            return Characters.Values;
        }

        /// <summary>
        ///     Récupérer un personnage d'un compte à l'aide de son ID.
        /// </summary>
        /// <param name="charID">
        ///     L'ID du personnage que l'on veut récupérer.
        /// </param>
        /// <returns>
        ///     Le personnage voulu, ou KeyNotFoundException si l'ID n'est pas présent.
        /// </returns>
        public DBCharacter GetCharacterByID(int charID) {
            return Characters[charID];
        }

        /// <summary>
        ///     Récupérer la position du compte dans la file d'attente. <br/>
        ///     <br/>
        ///     TODO: Je sais pas si c'est nécessaire de la stocker en DB.
        /// </summary>
        /// <returns></returns>
        public int GetQueuePosition() {
            return 0; // TODO: À corriger, et m'expliquer eheh
        }

    }
}

