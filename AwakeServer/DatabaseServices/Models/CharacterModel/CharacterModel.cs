using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Awake.NetworkServices;

namespace Awake.DatabaseServices.Models
{
    internal class DBCharacter
    {
        public int ID;
        public string Name;
        public int level;
        public int gfxID; // 10/11 pour un perso (H/M), 12/13 pour un mini perso, 1001 pour un bouftou blanc (a tester?)
        public string color1;
        public string color2;
        public string color3;
        public string color4;
        public string color5;
        public string accessories; // nUnicID(hex) ~ nType(int) ~ nFrame(int) ,  // cheveux,4,,A,C
        public int merchant; // Aura ?
        public int serverID;
        public int isDead;
        public int deathCount;
        public int lvlMax;

        public string guild;
        public CharacterSex sex;
        private string items;

        internal enum CharacterSex {
            Male = 0,
            Female = 1,
        }

        // TODO: change to private, add a generator function
        /// <summary>
        /// Modèle de personnage
        /// </summary>
        /// <param name="iD"></param>
        /// <param name="sex"></param>
        /// <param name="name"></param>
        /// <param name="level"></param>
        /// <param name="gfxID"></param>
        /// <param name="color1"></param>
        /// <param name="color2"></param>
        /// <param name="color3"></param>
        /// <param name="color4"></param>
        /// <param name="color5"></param>
        /// <param name="accessories"></param>
        /// <param name="merchant"></param>
        /// <param name="serverID"></param>
        /// <param name="isDead"></param>
        /// <param name="deathCount"></param>
        /// <param name="lvlMax"></param>
        /// <param name="items"></param>
        /// <param name="guild"></param>
        public DBCharacter(
            int iD,
            CharacterSex sex,
            string name,
            int level,
            int gfxID,
            string color1,
            string color2,
            string color3,
            string color4,
            string color5,
            string accessories,
            int merchant,
            int serverID,
            int isDead,
            int deathCount,
            int lvlMax,
            string items,
            string guild
        ) {
            ID = iD;
            Name = name;
            this.level = level;
            this.gfxID = gfxID;
            this.color1 = color1;
            this.color2 = color2;
            this.color3 = color3;
            this.color4 = color4;
            this.color5 = color5;
            this.accessories = accessories;
            this.merchant = merchant;
            this.serverID = serverID;
            this.isDead = isDead;
            this.deathCount = deathCount;
            this.lvlMax = lvlMax;
            this.guild = guild;
            this.sex = sex;
            this.items = items;
        }

        public string ToCharacterListString() => $"{ID};{Name};{level};{gfxID};{color1};{color2};{color3};{color4};{color5};{accessories};{merchant};{serverID};{isDead};{deathCount};{lvlMax}";
        public string ToGameString() => $"{ID}|{Name}|{level}|{guild}|{(int) sex}|{gfxID}|{color1}|{color2}|{color3}|{color4}|{color5}|{items}";
    }
}
