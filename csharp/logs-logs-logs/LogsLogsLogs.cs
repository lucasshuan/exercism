using System;

// TODO: define the 'LogLevel' enum
enum LogLevel
{
    Trace,
    Debug,
    Info,
    Warning,
    Error,
    Fatal,
    Unknown,
}

static class LogLine
{

    public static LogLevel ParseLogLevel(string logLine)
    {
        return logLine.Substring(1, 3) switch {
            "TRC" => LogLevel.Trace,
            "DBG" => LogLevel.Debug,
            "INF" => LogLevel.Info,
            "WRN" => LogLevel.Warning,
            "ERR" => LogLevel.Error,
            "FTL" => LogLevel.Fatal,
            _ => LogLevel.Unknown,
        }; 
    }

    public static string OutputForShortLog(LogLevel logLevel, string message)
    {
        var logLine = logLevel switch {
            LogLevel.Trace => "TRC",
            LogLevel.Debug => "DBG",
            LogLevel.Info => "INF",
            LogLevel.Warning => "WRN",
            LogLevel.Error => "ERR",
            LogLevel.Fatal => "FTL",
        };
        return $"[{logLine}] {message}";
    }
}
