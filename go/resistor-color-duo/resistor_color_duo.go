package resistorcolorduo

import "strconv"

var colorValues map[string]int = map[string]int{
	"black": 0,
	"brown": 1,
	"red": 2,
	"orange": 3,
	"yellow": 4,
	"green": 5,
	"blue": 6,
	"violet": 7,
	"grey": 8,
	"white": 9,
}

// Value should return the resistance value of a resistor with a given colors.
func Value(colors []string) int {
	var text string
	for i, c := range colors {
		if i == 2 {
			break
		}
		text += strconv.Itoa(colorValues[c])
	}
	v, _ := strconv.Atoi(text)
	return v
}
