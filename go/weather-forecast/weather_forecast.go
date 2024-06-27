// Package weather provides the forecast.
package weather

// CurrentCondition represents what the weather is like.
var CurrentCondition string

// CurrentLocation represents where the location of the weather is.
var CurrentLocation string

// Forecast returns a string of the current location and current condition.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
