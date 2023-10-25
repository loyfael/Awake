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

        public DBCharacter[] GetAllCharacters() {
            return Characters;
        }

        public DBCharacter GetCharacterByID(int charID) {
            return Characters[charID];
        }

    }
}

