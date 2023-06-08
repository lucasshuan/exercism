using System;

public static class PlayAnalyzer
{
    public static string AnalyzeOnField(int shirtNum) => shirtNum switch
    {
        1 => "goalie",
        2 => "left back",
        3 or 4 => "center back",
        5 => "right back",
        6 or 7 or 8 => "midfielder",
        9 => "left wing",
        10 => "striker",
        11 => "right wing",
        _ => throw new ArgumentOutOfRangeException(),
    };

    public static string AnalyzeOffField(object report) => report switch
    {
        Manager managerRep => $"{managerRep.Name}{(managerRep.Club != null ? $" ({managerRep.Club})" : "")}",
        Foul foulRep => foulRep.GetDescription(),
        Injury injuryRep => $"Oh no! {injuryRep.GetDescription()} Medics are on the field.",
        Incident => "An incident happened.",
        string stringRep => stringRep,
        int intRep => $"There are {intRep} supporters at the match.",
        _ => throw new ArgumentException(),
    };
}
