package hamming

import (
	"errors"
)

func Distance(a, b string) (int, error) {
	var n int
	if len(a) != len(b) {
		return 0, errors.New("n")
	}
	if a == b || a == "" {
		return 0, nil
	}
	brunes := []rune(b)
	for i, r := range a {
		if r != 'C' && r != 'A' && r != 'T' && r != 'G' {
			continue
		}
		if r != brunes[i] {
			n++
		}
	}
	return n, nil
}
