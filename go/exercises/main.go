package main

import (
	"exercises/internal/conditionals"
	"fmt"
	"strconv"
)

func main() {
	var resultNumber int = conditionals.Sum(1, 2)
	var resultText string = strconv.Itoa(resultNumber)

	fmt.Printf("\n")
	fmt.Printf("result: ")
	fmt.Printf(resultText)
	fmt.Printf("\n\n")
}
