using System;
using System.Text;

public static class Identifier
{
    public static string Clean(string identifier)
    {
        var str = new StringBuilder();
        var dashed = false;
        foreach (var c in identifier)
        {
            str.Append(c switch 
            {
                _ when Char.IsWhiteSpace(c) => "_",
                _ when Char.IsControl(c) => "CTRL",
                _ when IsGreekLowerCase(c) => default,
                _ when dashed => Char.ToUpper(c),
                _ when Char.IsLetter(c) => c,
                _ => default,
            });
            dashed = c.Equals('-');
        }
        return str.ToString();
    }

    private static bool IsGreekLowerCase(char c) => c >= 'α' && c <= 'ω';
}
