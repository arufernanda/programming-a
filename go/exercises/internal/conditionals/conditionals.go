package conditionals

import (
	"math"
)

func Sum(numberOne float32, numberTwo float32) float32 {
	return numberOne + numberTwo
}

func PositiveNegative(number int16) string {
	if number > 0 {
		return "positive"
	} else {
		return "negative"
	}
}

func MoreThanEighteen(age int8) bool {
	if age >= 18 {
		return true
	} else {
		return false
	}
}

func Grade(grade float32) string {
	if grade > 10.0 {
		return "ERROR"
	} else if grade >= 9.0 {
		return "A"
	} else if grade >= 7.0 {
		return "B"
	} else if grade >= 5.0 {
		return "C"
	} else if grade >= 4.5 {
		return "D"
	} else if grade < 4.5 {
		return "F"
	} else {
		return "error"
	}
}

func SumWeights(weights [6]uint8) uint16 {
	var index uint8 = 0
	var result uint16 = 0

	for {
		result = result + uint16(weights[index])

		if index == 5 {
			break
		}
		index = index + 1
	}

	return result
}

func Count(number uint) []uint {
	var countArray []uint
	var one uint = 1

	for {
		countArray = append(countArray, one)
		one = one + 1

		if one > number {
			break
		}
	}
	return countArray
}

func BoxBottles(sizeBox float64, sizeBottle float64, drinkAmount float64) ([]float64, float64) {
	var box []float64
	var index float64 = 0
	var remaining float64 = drinkAmount
	var limit uint16 = 10000

	for {

		if sizeBottle <= remaining {
			box = append(box, sizeBottle)
			remaining = remaining - sizeBottle
			index = index + 1
		}

		if sizeBottle > remaining || index == sizeBox {
			break
		}

		if limit == 0 {
			break
		}
	}
	return box, math.Round(remaining*100) / 100
}
