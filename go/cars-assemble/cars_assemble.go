package cars

// CalculateWorkingCarsPerHour calculates how many working cars are
// produced by the assembly line every hour.
func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	x := float64(productionRate)
	y := successRate * 0.01
	return x * y
}

// CalculateWorkingCarsPerMinute calculates how many working cars are
// produced by the assembly line every minute.
func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	x := CalculateWorkingCarsPerHour(productionRate, successRate)
	return int(x / 60)
}

// CalculateCost works out the cost of producing the given number of cars.
func CalculateCost(carsCount int) uint {
	groups := float64(carsCount / 10)
	remaining := float64(carsCount % 10)
	return uint(groups * 95000 + remaining * 10000)
}
