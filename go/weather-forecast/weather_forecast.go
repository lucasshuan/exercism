// Package weather provides tools that format
// the weather and stores city and condition.
package weather

// CurrentCondition stores the weather condition.
var CurrentCondition string
// CurrentLocation stores the location of the latest forecast.
var CurrentLocation string

// Forecast stores the current location and condition and returns
// a formatted string of the forecast.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
