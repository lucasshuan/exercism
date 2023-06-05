using System;
using System.Linq;

public static class Bob
{
    public static string Response(string statement)
    {
        if (statement.IsEmpty())
            return "Fine. Be that way!";
        if (statement.IsQuestion() && statement.IsUpper())
            return "Calm down, I know what I'm doing!";
        if (statement.IsQuestion())
            return "Sure.";
        if (statement.IsUpper())
            return "Whoa, chill out!";
        return "Whatever.";
    }

    private static bool IsQuestion(this string input) =>
        input.TrimEnd().EndsWith('?');

    private static bool IsUpper(this string input) =>
        input.Any(char.IsLetter) && input.ToUpperInvariant() == input;

    private static bool IsEmpty(this string input) =>
        string.IsNullOrWhiteSpace(input);   
}