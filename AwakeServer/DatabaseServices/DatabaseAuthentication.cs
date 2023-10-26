using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Npgsql;
using NpgsqlTypes;
using DotNetEnv;
using Awake.CoreServices;

namespace Awake.DatabaseServices
{
    internal class DatabaseAuthentication
    {
        private NpgsqlConnection connection;

        public DatabaseAuthentication()
        {
            connection = new NpgsqlConnection();
        }

        /// <summary>
        ///     Permet d'ouvrir la connexion à la base de données. <br/>
        ///     La méthode récupère les crédentials présent dans le fichier <br/>
        ///     .env se trouvant à la racine du projet.
        /// </summary>
        public void OpenConnection()
        {
            if (connection.State != ConnectionState.Open)
            {
                string dbHost = Env.GetString("DB_HOST");
                string dbPort = Env.GetString("DB_PORT");
                string dbName = Env.GetString("DB_NAME");
                string dbUsername = Env.GetString("DB_USERNAME");
                string dbPassword = Env.GetString("DB_PASSWORD");

                string connectionString = $"Host={dbHost};Port={dbPort};Database={dbName};Username={dbUsername};Password={dbPassword}";
                connection.ConnectionString = connectionString;
                connection.Open();
            }
        }

        public void CloseConnection()
        {
            if (connection.State != ConnectionState.Closed)
            {
                connection.Close();
            }
        }
    }
}
