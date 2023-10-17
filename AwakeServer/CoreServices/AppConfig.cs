using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Awake.CoreServices
{
    internal class AppConfig
    {
        /* Global config */
		public const bool DEBUG = true;

        /* Networking config */
        public const string NETWORK_BIND_HOST = "127.0.0.1";
		public const int NETWORK_BIND_PORT = 4444;
    }
}
