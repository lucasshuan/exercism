package birdwatcher

// TotalBirdCount return the total bird count by summing
// the individual day's counts.
func TotalBirdCount(birdsPerDay []int) int {
	var birdsTotal int
	for i := 0; i < len(birdsPerDay); i++ {
		birdsTotal += birdsPerDay[i]
	}
	return birdsTotal
}

// BirdsInWeek returns the total bird count by summing
// only the items belonging to the given week.
func BirdsInWeek(birdsPerDay []int, week int) int {
	w := (week-1) * 7
	birdsThatWeek := birdsPerDay[w:w+7]
	return TotalBirdCount(birdsThatWeek)
}

// FixBirdCountLog returns the bird counts after correcting
// the bird counts for alternate days.
func FixBirdCountLog(birdsPerDay []int) []int {
	for i := 0; i < len(birdsPerDay); i += 2 {
		birdsPerDay[i]++
	}
	return birdsPerDay
}