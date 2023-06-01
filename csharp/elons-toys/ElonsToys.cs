using System;

class RemoteControlCar
{
    private int _distance = 0;
    private int _battery = 100;

    public static RemoteControlCar Buy() =>
        new RemoteControlCar();

    public string DistanceDisplay() =>
        $"Driven {_distance} meters";

    public string BatteryDisplay() =>
        _battery > 0 ? $"Battery at {_battery}%" : "Battery empty";

    public void Drive()
    {
        if (_battery == 0)
            return;
        _battery -= 1;
        _distance += 20;
    }
}
