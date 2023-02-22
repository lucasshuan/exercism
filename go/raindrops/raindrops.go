package raindrops

import "strconv"

func Convert(number int) (w string) {
	if number % 3 == 0 {
		w += "Pling"
	}
	if number % 5 == 0 {
		w += "Plang"
	}
	if number % 7 == 0 {
		w += "Plong"
	}
	if w == "" {
		w = strconv.Itoa(number)
	}
	return
}
