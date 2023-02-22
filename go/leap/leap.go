package leap

// IsLeapYear should have a comment documenting it.
func IsLeapYear(n int) bool {
	return n % 4 == 0 && !(n % 100 == 0) || n % 400 == 0
}
