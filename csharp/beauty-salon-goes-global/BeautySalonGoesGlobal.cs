using System;
using System.Collections.Generic;
using Newtonsoft.Json;


public enum Location
{
    NewYork,
    London,
    Paris
}

public enum AlertLevel
{
    Early,
    Standard,
    Late
}

public static class Appointment
{
    public static DateTime ShowLocalTime(DateTime dtUtc) => dtUtc.ToLocalTime();

    static readonly Dictionary<Location, string> LocationMap = new()
    {
        {Location.London, "GMT Standard Time"},
        {Location.NewYork, "Eastern Standard Time"},
        {Location.Paris, "W. Europe Standard Time"},
    };
    
    public static DateTime Schedule(string appointmentDateDescription, Location location)
    {
        DateTime dt = DateTime.Parse(appointmentDateDescription);
        TimeZoneInfo tzi = TimeZoneInfo.FindSystemTimeZoneById(LocationMap.GetValueOrDefault(location));
        return TimeZoneInfo.ConvertTimeToUtc(dt, tzi);
    }

    public static DateTime GetAlertTime(DateTime appointment, AlertLevel alertLevel)
    {
        TimeSpan timeOffset = alertLevel switch
        {
            AlertLevel.Early => new TimeSpan(1, 0, 0, 0),
            AlertLevel.Standard => new TimeSpan(1, 45, 0),
            AlertLevel.Late => new TimeSpan(0, 30, 0),
            _ => throw new ArgumentOutOfRangeException(),
        };
        return appointment - timeOffset;
    }

    public static bool HasDaylightSavingChanged(DateTime dt, Location location)
    {
        throw new NotImplementedException("Please implement the (static) Appointment.HasDaylightSavingChanged() method");
    }

    public static DateTime NormalizeDateTime(string dtStr, Location location)
    {
        throw new NotImplementedException("Please implement the (static) Appointment.NormalizeDateTime() method");
    }
}
