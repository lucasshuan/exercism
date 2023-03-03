package luhn

import "fmt"

func Valid(str string) bool {
    var sum, i, d, m int
    for i = len(str) - 1; i >= 0; i-- {
        t := str[i]
        switch {
        case t == ' ':
            continue
        case t >= '0' && t <= '9':
            m = int(t - '0') 
            if d % 2 == 1 {
                m *= 2
            }
            if m > 9 {
                m -= 9
            }
            sum += m
            d++
        default:
            return false
        }
    }
    fmt.Printf("Soma: %d | Text: %s\n", sum, str)
    return d > 1 && sum % 10 == 0
}
