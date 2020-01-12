package main

import (
	"exercises/internal/conditionals"
	"fmt"
	//"strconv"
)

func main() {
	// var resultNumber float32 = conditionals.Sum(1, 2)
	// var resultText string = strconv.Itoa(resultNumber)
	var bottlesBox [6]uint8
	bottlesBox[0] = 1
	bottlesBox[1] = 5
	bottlesBox[5] = 2
	bottlesBox[4] = 255

	//var resultSum string = strconv.Itoa(int(conditionals.SumWeights(bottlesBox)))

	var resultArray []uint = conditionals.Count(5)

	fmt.Printf("\n")
	fmt.Printf("resultArray: ")
	fmt.Printf("%+v", resultArray)
	fmt.Printf("\n\n")
}
