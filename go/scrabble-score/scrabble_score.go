package scrabble

import "unicode"

func Score(word string) (v int) {
	for _, r := range word {
		switch unicode.ToUpper(r) {
		case 'A', 'E', 'I', 'O', 'U', 'L', 'N', 'R', 'S', 'T':
			v += 1
		case 'D', 'G':
			v += 2
		case 'B', 'C', 'M', 'P':
			v += 3
		case 'F', 'H', 'V', 'W', 'Y':
			v += 4
		case 'K':
			v += 5
		case 'J', 'X':
			v += 8
		case 'Q', 'Z':
			v += 10
		}
	}
	return
}