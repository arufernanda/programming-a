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

func Candy(buy int, eat int, give int) int {
	var remaining int

	remaining = buy - (eat + give)

	return remaining
}

func ProductionBreads(hours int) int {
	var breads int = 0

	breads = 25 * hours

	return breads
}

func Gain(purchase int, sold int, repurchased int, soldAgain int) int {
	var gain int = 0
	var spending int = 0

	spending = purchase + repurchased
	gain = (sold + soldAgain) - spending

	return gain
}

func Colors(color string) string {

	if color == "red" || color == "yeloow" || color == "blue" {
		return "primária"
	} else if color == "green" || color == "orange" || color == "purple" {
		return "secundária"
	} else {
		return "others"
	}
}

func Letters(letter string) string {

	if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" {
		return "vogal"
	} else {
		return "consoante"
	}
}

func SumArray(array []int) int {
	var sum int = 0

	for _, num := range array {
		sum += num
	}
	return sum
}

func ReturnOddNumbers(array []int) []int {
	var returnsarray []int

	for _, num := range array {
		if num%2 != 0 {
			returnsarray = append(returnsarray, num)
		}
	}
	return returnsarray
}

func Discount(price float64, percent float64) float64 {
	var priceWithDiscount float64 = 0
	var discounts float64 = 0

	discounts = (price * percent) / 100
	priceWithDiscount = price - discounts

	if priceWithDiscount < 9 {
		priceWithDiscount = 9
	}
	return priceWithDiscount
}

func Installment(price float64) int8 {

	if price/12 >= 11.50 {
		return 12
	}

	if price/11 >= 11.50 {
		return 11
	}

	if price/10 >= 11.50 {
		return 10
	}

	if price/9 >= 11.50 {
		return 9
	}

	if price/8 >= 11.50 {
		return 8
	}

	if price/7 >= 11.50 {
		return 7
	}

	if price/6 >= 11.50 {
		return 6
	}

	if price/5 >= 11.50 {
		return 5
	}

	if price/4 >= 11.50 {
		return 4
	}

	if price/3 >= 11.50 {
		return 3
	}

	if price/2 >= 11.50 {
		return 2
	} else {
		return 1
	}
}

func Backup(giga float64) float64 {
	var cdRoms float64 = 0

	cdRoms = math.Ceil((giga * 1024) / 700)

	return cdRoms
}
