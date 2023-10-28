using System;
using Awake.NetworkServices;
using System.Diagnostics.CodeAnalysis;
using DotNetEnv;
using Awake.DatabaseServices;
using Awake.Utils;

namespace Awake
{
	public class AwakeServer {
		[AllowNull] private static AwakeServer serverInstance;
		private bool running = false;

		// Ici on crée l'instance de la base de donnée
        readonly DatabaseAuthentication dbConnect = new();

        public void Start() {
			try {
				OutputMessage.Log("Starting Awake App...");
				// dbConnect.OpenConnection(); // Ouvrir la connexion à la base de donnée
				running = true;
				SocketHandler.Start(); // Bloque jusqu'à la fermeture du serveur
			} catch(Exception e) {
				OutputMessage.Error("Something went wrong : " + e.Message);
			}
			GracefullStop();
		}

		public static void Main(string[] args) {
			serverInstance = new AwakeServer();

			OutputMessage.Log("Loading Environment...");
			Env.TraversePath().Load();

			Console.CancelKeyPress += delegate(object? sender, ConsoleCancelEventArgs e) {
				e.Cancel = true;
				serverInstance.GracefullStop();
			};

			serverInstance.Start();
		}

		public static bool isRunning() {
			return serverInstance.running;
		}
		
		public void GracefullStop() {
			OutputMessage.Log("Shutting down server...");

			serverInstance.running = false;
			dbConnect.CloseConnection();
			SocketHandler.Stop();
			OutputMessage.Log("Server stopped.");
		}
	}
}