using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DotNetEnv;

namespace Awake.CoreServices
{
    /// <summary>
    ///     Permet de gérer les couleurs au sein de la console.
    /// </summary>
    internal static class Colors {
        public static readonly string Red = "\u001b[31m";
        public static readonly string Yellow = "\u001b[33m";
        public static readonly string Gray = "\u001b[90m";
        public static readonly string White = "\u001b[37m";

        public static readonly string Bold = "\u001b[1m";
        public static readonly string Reset = "\u001b[0m";
    }

    /// <summary>
    ///     Permet de gérer niveaux de log au sein de la console.
    /// </summary>
    internal static class LogLevel {
        public static readonly string Info    = $"[{Colors.Bold}{Colors.White}Info{Colors.Reset}]\t{Colors.White}";
        public static readonly string Warning = $"[{Colors.Bold}{Colors.Yellow}Warning{Colors.Reset}]\t{Colors.Yellow}";
        public static readonly string Error   = $"[{Colors.Bold}{Colors.Red}Error{Colors.Reset}]\t{Colors.Red}";
        public static readonly string Debug   = $"[{Colors.Bold}{Colors.Gray}Debug{Colors.Reset}]\t{Colors.Gray}";
    }

    /// <summary>
    ///     Permet de gérer les logs retournés par l'application. <br/>
    ///     que ce soit des erreurs, réussites, infos, debug..
    /// </summary>
    internal class OutputMessage
    {
        private static void LogWithLevel(object msg, string logLevel) {
            Console.WriteLine($"{logLevel} [{DateTime.Now:HH:mm:ss}] {msg}");
        }

        /// <summary>
        ///     Message de log (simple)
        /// </summary>
        /// <param name="msg"></param>
        public static void Log(object msg) {
            LogWithLevel(msg, LogLevel.Info);
        }

        /// <summary>
        ///     Message de debug
        /// </summary>
        /// <param name="msg"></param>
        public static void Debug(object msg) {
            if (Env.GetBool("DEBUG")) {
                LogWithLevel(msg, LogLevel.Debug);
            }
        }

        /// <summary>
        ///     Message d'erreur
        /// </summary>
        /// <param name="msg"></param>
        public static void Error(object msg) {
            LogWithLevel(msg, LogLevel.Error);
        }

        /// <summary>
        ///     Message de warn
        /// </summary>
        /// <param name="msg"></param>
        public static void Warning(object msg) {
            LogWithLevel(msg, LogLevel.Warning);
        }
    }
}
