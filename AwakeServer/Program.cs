using System;
using System.Net;
using System.Net.Sockets;
using System.Collections;
using System.Threading;
using System.IO;	
using Awake.CoreServices;
using Awake.NetworkServices;
using System.Diagnostics.CodeAnalysis;
using DotNetEnv;
using Awake.DatabaseServices;
using System.Data.Common;

namespace Awake
{
	public class AwakeServer {
		[AllowNull] private static AwakeServer serverInstance;
		private bool running = false;

		// Ici on crée l'instance de la base de donnée
        readonly DatabaseAuthentication dbConnect = new();

        public void Start() {
			try {
				Utils.Log("Awake App started..");
				dbConnect.DatabaseConnection(); // TODO -> Fix -> Host can't be null.
				dbConnect.OpenConnection(); // Ouvrir la connexion à la base de donnée
				running = true;
				SocketHandler.Start(); // Hangs until shutdown is requested
				Utils.Log("Server stopped.");

			} catch(Exception e) {
				Console.WriteLine("Something wrong.. " + e);
				dbConnect.CloseConnection();
			}	
		}

		public static void Main(string[] args) {
			serverInstance = new AwakeServer();

			Console.CancelKeyPress += delegate(object? sender, ConsoleCancelEventArgs e) {
				e.Cancel = true;
				GracefullStop();
			};

			serverInstance.Start();
		}

		public static bool isRunning() {
			return serverInstance.running;
		}
		
		public static void GracefullStop() {
			Utils.Log("Shutting down gracefully");

			serverInstance.running = false;
			SocketHandler.StopServer();
		}
	}
}