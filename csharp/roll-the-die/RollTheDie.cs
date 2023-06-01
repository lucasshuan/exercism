using System;

public class Player
{
    public int RollDie()
    {
        var roll = new Random();
        return roll.Next(1, 18);
    }

    public double GenerateSpellStrength()
    {
        var roll = new Random();
        return roll.NextDouble() * 100;
    }
}
