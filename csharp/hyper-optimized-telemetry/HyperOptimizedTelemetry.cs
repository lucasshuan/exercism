using System;
using System.Linq;

public static class TelemetryBuffer
{
    public static byte[] ToBuffer(long reading)
    {
        (int size, byte[] bytes) = reading switch 
        {
            < int.MinValue => (0xf8, BitConverter.GetBytes((long)reading)),
            < short.MinValue => (0xfc, BitConverter.GetBytes((int)reading)),
            < 0 => (0xfe, BitConverter.GetBytes((short)reading)),
            <= ushort.MaxValue => (0x02, BitConverter.GetBytes(reading)),
            <= int.MaxValue => (0xfc, BitConverter.GetBytes(reading)),
            <= uint.MaxValue => (0x04, BitConverter.GetBytes(reading)),
            _ => (0xf8, BitConverter.GetBytes(reading))
        };
        var buffer = new byte[9];
        buffer[0] = (byte)size;
        bytes.CopyTo(buffer, 1);
        return buffer;
    }

    public static long FromBuffer(byte[] buffer) =>
        buffer[0] switch {
            256 - 8 or 4 or 2 => BitConverter.ToInt64(buffer, 1),
            256 - 4 => BitConverter.ToInt32(buffer, 1),
            256 - 2 => BitConverter.ToInt16(buffer, 1),
            _ => 0
    };
}
