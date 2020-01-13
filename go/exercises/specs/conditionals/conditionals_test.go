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

}
