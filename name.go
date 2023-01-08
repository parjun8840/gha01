package main
import ( 
"fmt"
"runtime"
)
func main() {
    fmt.Println("My name is: Arjun Pandey- parjun8840 & panjali8840")
    fmt.Printf("Number of CPU: %d \n",runtime.NumCPU())
    fmt.Printf("OS: %s",runtime.GOOS)
}

