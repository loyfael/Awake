using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Awake.NetworkServices;

namespace Awake.DatabaseServices.Models
{
    /// <summary>
    ///     Cette classe représente un personnage, tel qu'il est stocké dans la base de données. <br/>
    ///     Elle permet de faciliter la récupération de données et de faire l'interface entre la DB <br/>
    ///     et le reste du serveur.
    /// </summary>
    internal class DBCharacter
    {
        public int ID;
        public string? Name;
        public int Level;
        public int GfxID; // 10/11 pour un perso (H/M), 12/13 pour un mini perso, 1001 pour un bouftou blanc (ca marche mdr)
        public int Color1 = -1;
        public int Color2 = -1;
        public int Color3 = -1;
        public int Color4 = -1;
        public int Color5 = -1;
        public string? Accessories; // nUnicID(hex) ~ nType(int) ~ nFrame(int) ,  // 8,4,,A,C pour avoir des cheveux(8), un chapeau (4) et une tenue (A,C)
        public int merchant = 0; // Aura ?
        public int serverID = 0;
        public int isDead = 0;
        public int deathCount = 0;
        public int lvlMax = 0;

        public CharacterSex Sex;
        public string? Guild;
        public string? Items;

        internal enum CharacterSex {
            Male = 0,
            Female = 1,
        }

        public string ToCharacterListString() => $"{ID};{Name};{Level};{GfxID};{Color1:X};{Color2:X};{Color3:X};{Color4:X};{Color5:X};{Accessories};{merchant};{serverID};{isDead};{deathCount};{lvlMax}";
        public string ToGameString() => $"{ID}|{Name}|{Level}|{Guild}|{(int) Sex}|{GfxID}|{Color1:X}|{Color2:X}|{Color3:X}|{Color4:X}|{Color5}|{Items}";
    }
}
