package main
import ( 
"fmt"
"runtime"
)

func Sum(x int, y int) int {
    return x + y
}

func Multiply(a, b int) int {
    return a * b
}

func main() {
    fmt.Println("My name is: Arjun Pandey- parjun8840 & panjali8840")
    fmt.Printf("Number of CPU: %d \n",runtime.NumCPU())
    fmt.Printf("OS: %s",runtime.GOOS)
    Sum(5, 5)
    Multiply(5,5)
}
