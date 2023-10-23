using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DotNetEnv;

namespace Awake.CoreServices
{
    internal static class Colors {
        public static readonly string Red = "\u001b[31m";
        public static readonly string Yellow = "\u001b[33m";
        public static readonly string Gray = "\u001b[90m";
        public static readonly string White = "\u001b[37m";

        public static readonly string Bold = "\u001b[1m";
        public static readonly string Reset = "\u001b[0m";
    }
    internal static class LogLevel {
        public static readonly string Info    = $"[{Colors.Bold}{Colors.White}Info{Colors.Reset}]\t{Colors.White}";
        public static readonly string Warning = $"[{Colors.Bold}{Colors.Yellow}Warning{Colors.Reset}]\t{Colors.Yellow}";
        public static readonly string Error   = $"[{Colors.Bold}{Colors.Red}Error{Colors.Reset}]\t{Colors.Red}";
        public static readonly string Debug   = $"[{Colors.Bold}{Colors.Gray}Debug{Colors.Reset}]\t{Colors.Gray}";
    }

    internal class Utils
    {
        private static void LogWithLevel(object msg, string logLevel) {
            Console.WriteLine($"{logLevel} [{DateTime.Now:HH:mm:ss}] {msg}");
        }

        public static void Log(object msg) {
            LogWithLevel(msg, LogLevel.Info);
        }

        public static void Debug(object msg) {
            if (Env.GetBool("DEBUG")) {
                LogWithLevel(msg, LogLevel.Debug);
            }
        }

        public static void Error(object msg) {
            LogWithLevel(msg, LogLevel.Error);
        }

        public static void Warning(object msg) {
            LogWithLevel(msg, LogLevel.Warning);
        }
    }
}
