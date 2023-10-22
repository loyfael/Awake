using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Npgsql;
using NpgsqlTypes;
using DotNetEnv;

namespace Awake.DatabaseServices
{
    internal class DatabaseAuthentication
    {
        private NpgsqlConnection connection;
        private string connectionString;

        public void DatabaseConnection()
        {
            string dbHost = Env.GetString("DB_HOST");
            string dbPort = Env.GetString("DB_PORT");
            string dbName = Env.GetString("DB_NAME");
            string dbUsername = Env.GetString("DB_USERNAME");
            string dbPassword = Env.GetString("DB_PASSWORD");

            connectionString = $"Host={dbHost};Port={dbPort};Database={dbName};Username={dbUsername};Password={dbPassword}";
            connection = new NpgsqlConnection(connectionString);
        }

        public void OpenConnection()
        {
            if (connection.State != ConnectionState.Open)
            {
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
