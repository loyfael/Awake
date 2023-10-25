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
    internal class DBAccount
    {
        public int ID;
        public string Name;
        public int Community;
        public bool isAdmin;
        public bool isLogged;
        private DBCharacter[] Characters;

        /// <summary>
        /// ? Need more information
        /// </summary>
        /// <param name="id"></param>
        /// <param name="name"></param>
        /// <param name="isAdmin"></param>
        public DBAccount(int id, string name, bool isAdmin)
        {
            ID = id;
            Name = name;
            Community = 0;
            this.isAdmin = isAdmin;
            this.isLogged = false;

            // TODO: fetch characters from DB
            Characters = new DBCharacter[] {
                new(0,0, "Test Character",999,10,"-1","-1","-1","-1","-1","8,4,,A,C",0,0,0,0,0, "",""),
                new(1,0, "Bouftou",1,1001,"-1","-1","-1","-1","-1","",0,0,0,0,0, "","")
            };
        }

        /// <summary>
        /// Récupérer tout les personnages d'un joueur
        /// </summary>
        /// <returns></returns>
        public DBCharacter[] GetAllCharacters() {
            return Characters;
        }

        /// <summary>
        /// Récupérer un personnage à l'aide de son ID
        /// </summary>
        /// <returns></returns>
        public DBCharacter GetCharacterByID(int charID) {
            return Characters[charID];
        }

        /// <summary>
        /// Récupérer la queue du personnage
        /// </summary>
        /// <returns></returns>
        public DBCharacter GetCharacterQueue() {
            return Characters;
        }

    }
}

