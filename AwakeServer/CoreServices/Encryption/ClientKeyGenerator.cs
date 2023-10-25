using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Awake.CoreServices.Encryption
{
    internal class ClientKeyGenerator
    {
        /// <summary>
        /// Générer la clé permettant la connexion
        /// </summary>
        /// <returns></returns>
        public static string GenerateKey() {
            string k = "";
		    Random rnd = new();

            for (int i=0; i<32; i++) {
                k += (char) rnd.Next('a', 'z'+1);
            }

            return k;
        }
    }
}
