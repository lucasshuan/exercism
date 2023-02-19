package parsinglogfiles

import (
	"regexp"
)

func IsValidLine(text string) bool {
	match, _ := regexp.MatchString(`^\[(ERR|TRC|DBG|INF|WRN|FTL)\] [A-Za-z]+`, text)
	return match
}	

func SplitLogLine(text string) []string {
	re := regexp.MustCompile(`<([^a-zA-Z0-9]+)?>`)
	return re.Split(text, -1)
}

func CountQuotedPasswords(lines []string) (count int) {
	re := regexp.MustCompile(`(?i)"(.+)?password(.+)?"`)
	for _, text := range lines {
		if (re.MatchString(text)) {
			count++
		}
	}
	return count
}

func RemoveEndOfLineText(text string) string {
	re := regexp.MustCompile(`end-of-line([0-9]+)?`)
	return re.ReplaceAllString(text, "")
}

func TagWithUserName(lines []string) (texts []string) {
	for _, v := range lines {
		re := regexp.MustCompile(`User( )+([a-zA-Z0-9]+( ))`)
		userExists := re.MatchString(v)
		if userExists {
			s := re.FindStringSubmatch(v)
			texts = append(texts,"[USR] " + s[2] + v)
			continue
		}
		texts = append(texts, v)
	}
	return
}
