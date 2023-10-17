using System;
using System.Net;
using System.Net.Sockets;
using System.Collections;
using System.Threading;
using System.IO;	
using Awake.CoreServices;
using Awake.NetworkServices;
using System.Diagnostics.CodeAnalysis;

namespace Awake
{
	public class AwakeServer {
		[AllowNull] private static AwakeServer instance;
		private bool running = false;

		public void Start() {
			Utils.Log("Server started.");
			running = true;
			SocketHandler.Start(); // Hangs until shutdown is requested
			Utils.Log("Server stopped.");
		}

		public static void Main(string[] args) {
			instance = new AwakeServer();

			Console.CancelKeyPress += delegate(object? sender, ConsoleCancelEventArgs e) {
				e.Cancel = true;
				GracefullStop();
			};

			instance.Start();
		}

		public static bool isRunning() {
			return instance.running;
		}
		
		public static void GracefullStop() {
			Utils.Log("Shutting down gracefully");

			instance.running = false;
			SocketHandler.StopServer();
		}
	}
}