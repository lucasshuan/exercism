using System;
using System.Linq;

class BirdCount
{
    private int[] birdsPerDay;

    public BirdCount(int[] birdsPerDay)
    {
        this.birdsPerDay = birdsPerDay;
    }

    public static int[] LastWeek() =>
        new int[] {0, 2, 5, 3, 7, 8, 4};

    public int Today() =>
        birdsPerDay[birdsPerDay.Length-1];

    public void IncrementTodaysCount()
    {
        birdsPerDay[birdsPerDay.Length-1] += 1;
    }

    public bool HasDayWithoutBirds()
    {
        return birdsPerDay.Contains(0);
    }

    public int CountForFirstDays(int numberOfDays)
    {
        var sum = 0;
        for (int i = 0; i < numberOfDays; i++) {
            sum += birdsPerDay[i];
        }
        return sum;
    }

    public int BusyDays()
    {
        var days = 0;
        for (int i = 0; i < birdsPerDay.Length-1; i++) {
            if (birdsPerDay[i] >= 5) 
                days += 1;
        }
        return days;
    }
}
