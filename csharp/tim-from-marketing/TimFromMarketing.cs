using System;

static class Badge
{
    public static string Print(int? id, string name, string? department)
    {
        var badgeId = id != null ? $"[{id}] - " : "";
        var badgeDepartment = department != null ? department.ToUpper() : "OWNER";
        return $"{badgeId}{name} - {badgeDepartment}";
    }
}
