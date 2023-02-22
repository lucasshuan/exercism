package isogram

import "strings"

func IsIsogram(word string) bool {
	letters := make(map[string]int)
	for _, r := range word {
		if r == '-' || r == ' ' {
			continue
		}
		s := strings.ToUpper(string(r))
		letters[s] += 1
		if letters[s] > 1 {
			return false
		}
	}
	return true
}
