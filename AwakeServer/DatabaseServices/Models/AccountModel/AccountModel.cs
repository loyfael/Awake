using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.PortableExecutable;
using System.Text;
using System.Threading.Tasks;
using Awake.CoreServices.Encryption;
using Awake.DatabaseServices.Models;
using Awake.NetworkServices;

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
        public List<DBCharacter> Characters = new List<DBCharacter>();

        /// <summary>
        ///     Récupérer tout les personnages d'un compte.
        /// </summary>
        /// <returns>
        ///     La liste de DBCharacters
        /// </returns>
        public List<DBCharacter> GetAllCharacters() {
            return Characters;
        }

        /// <summary>
        ///     Récupérer un personnage d'un compte à l'aide de son ID.
        /// </summary>
        /// <param name="charID">
        ///     L'ID du personnage que l'on veut récupérer.
        /// </param>
        /// <returns>
        ///     Le personnage voulu.
        /// </returns>
        public DBCharacter GetCharacterByID(int charID) {
            return Characters[charID]; // TODO: j'ai mis par index et non par ID, regarder si c'était bien ça ou s'il faut changer pour l'ID. Ajouter des bounds checks
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

