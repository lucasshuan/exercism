package interest

import "math"

// InterestRate returns the interest rate for the provided balance.
func InterestRate(balance float64) float32 {
	switch{
	case balance < 0:
		return 3.213
	case balance >= 5000:
		return 2.475
	case balance >= 1000:
		return 1.621
	default:
		return 0.5
	}
}

// Interest calculates the interest for the provided balance.
func Interest(balance float64) float64 {
	return float64(InterestRate(balance) / 100) * balance
}

// AnnualBalanceUpdate calculates the annual balance update, taking into account the interest rate.
func AnnualBalanceUpdate(balance float64) float64 {
	return balance + Interest(balance)
}

// YearsBeforeDesiredBalance calculates the minimum number of years required to reach the desired balance.
func YearsBeforeDesiredBalance(balance, targetBalance float64) (year int) {
	for year=0; math.Abs(balance) < math.Abs(targetBalance); year++ {
		balance += Interest(balance)
	}
	return year
}	
