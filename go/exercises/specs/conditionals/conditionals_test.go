package specs

import (
	"exercises/internal/conditionals"
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestConditionals(t *testing.T) {
	assert.Equal(t, float32(3), conditionals.Sum(1, 2), "two sum two equal three")
	assert.Equal(t, float32(6.1), conditionals.Sum(2.5, 3.6), "two sum two equal three")
	assert.Equal(t, "positive", conditionals.PositiveNegative(1), "return positive if > 0, or, negative if < 0")
	assert.Equal(t, "negative", conditionals.PositiveNegative(-1), "return positive if > 0, or, negative if < 0")
	assert.Equal(t, "positive", conditionals.PositiveNegative(326), "return positive if > 0, or, negative if < 0")
	assert.Equal(t, true, conditionals.MoreThanEighteen(22))
	assert.Equal(t, false, conditionals.MoreThanEighteen(1))

	var result bool = false
	var age int8 = 1
	assert.Equal(t, result, conditionals.MoreThanEighteen(age))

	assert.Equal(t, "A", conditionals.Grade(10.0))
	assert.Equal(t, "B", conditionals.Grade(8.9))
	assert.Equal(t, "C", conditionals.Grade(5.5))
	assert.Equal(t, "D", conditionals.Grade(4.5))
	assert.Equal(t, "F", conditionals.Grade(1.0))

	var booksBox [2]string
	booksBox[0] = "Halden"
	assert.Equal(t, "Halden", booksBox[0])
	assert.Equal(t, 2, len(booksBox))

	var bottlesBox [6]uint8
	bottlesBox[0] = 1
	bottlesBox[1] = 5
	bottlesBox[5] = 2
	bottlesBox[4] = 255
	assert.Equal(t, uint8(1), bottlesBox[0])
	assert.Equal(t, 6, len(bottlesBox))
	assert.Equal(t, uint16(263), conditionals.SumWeights(bottlesBox))

	var bottlesBoxTwo [6]uint8
	bottlesBoxTwo[0] = 5
	bottlesBoxTwo[2] = 5
	bottlesBoxTwo[3] = 5
	bottlesBoxTwo[5] = 5
	assert.Equal(t, uint8(5), bottlesBoxTwo[0])
	assert.Equal(t, 6, len(bottlesBoxTwo))
	assert.Equal(t, uint16(20), conditionals.SumWeights(bottlesBoxTwo))

	var expectArray []uint
	expectArray = append(expectArray, 1)
	expectArray = append(expectArray, 2)
	expectArray = append(expectArray, 3)
	expectArray = append(expectArray, 4)
	expectArray = append(expectArray, 5)
	assert.Equal(t, expectArray, conditionals.Count(5))

	var expectedBoxBottle []float64
	expectedBoxBottle = append(expectedBoxBottle, 1.5)
	expectedBoxBottle = append(expectedBoxBottle, 1.5)
	expectedBoxBottle = append(expectedBoxBottle, 1.5)
	expectedBoxBottle = append(expectedBoxBottle, 1.5)
	expectedBoxBottle = append(expectedBoxBottle, 1.5)
	expectedBoxBottle = append(expectedBoxBottle, 1.5)

	var boxBottle []float64
	var remaining float64

	boxBottle, remaining = conditionals.BoxBottles(6, 1.5, 12.5)

	assert.Equal(t, expectedBoxBottle, boxBottle)
	assert.Equal(t, float64(3.5), remaining)

	var expectedBoxBottleTwo []float64
	expectedBoxBottleTwo = append(expectedBoxBottleTwo, 1.2)
	expectedBoxBottleTwo = append(expectedBoxBottleTwo, 1.2)
	expectedBoxBottleTwo = append(expectedBoxBottleTwo, 1.2)

	var boxBottleTwo []float64
	var remainingTwo float64

	boxBottleTwo, remainingTwo = conditionals.BoxBottles(4, 1.2, 4.2)

	assert.Equal(t, expectedBoxBottleTwo, boxBottleTwo)
	assert.Equal(t, float64(0.6), remainingTwo)

	assert.Equal(t, int(75), conditionals.Candy(500, 305, 120))
	assert.Equal(t, int(2900), conditionals.Candy(5000, 2000, 100))
	assert.Equal(t, int(7), conditionals.Candy(10, 2, 1))

	assert.Equal(t, int(100), conditionals.ProductionBreads(4))
	assert.Equal(t, int(50), conditionals.ProductionBreads(2))

	assert.Equal(t, int(20), conditionals.Gain(70, 80, 90, 100))
	assert.Equal(t, int(120), conditionals.Gain(70, 80, 90, 200))

	assert.Equal(t, string("primária"), conditionals.Colors("red"))
	assert.Equal(t, string("secundária"), conditionals.Colors("green"))
	assert.Equal(t, string("others"), conditionals.Colors("pink"))

	assert.Equal(t, string("vogal"), conditionals.Letters("a"))
	assert.Equal(t, string("consoante"), conditionals.Letters("d"))
	assert.Equal(t, string("consoante"), conditionals.Letters("z"))

	var arraySum []int
	arraySum = append(arraySum, 1)
	arraySum = append(arraySum, 3)
	arraySum = append(arraySum, 4)
	assert.Equal(t, int(8), conditionals.SumArray(arraySum))

	var expectsArray []int
	expectsArray = append(expectsArray, 1)
	expectsArray = append(expectsArray, 3)

	assert.Equal(t, expectsArray, conditionals.ReturnOddNumbers(arraySum))

	assert.Equal(t, float64(9.0), conditionals.Discount(10.0, 10.0))
	assert.Equal(t, float64(95.0), conditionals.Discount(100.0, 5.0))
	assert.Equal(t, float64(750.0), conditionals.Discount(1000.0, 25.0))
	assert.Equal(t, float64(74.10), conditionals.Discount(76.0, 2.5))
	assert.Equal(t, float64(9), conditionals.Discount(9.90, 10.0))

	assert.Equal(t, int8(2), conditionals.Installment(27.35))
	assert.Equal(t, int8(1), conditionals.Installment(11.59))
	assert.Equal(t, int8(1), conditionals.Installment(22.99))
	assert.Equal(t, int8(12), conditionals.Installment(500.0))

	assert.Equal(t, float64(2), conditionals.Backup(1))

}
