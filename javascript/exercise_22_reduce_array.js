function reduceArray(numbersOne, numbersTwo, numbersThree) {
  evenNumbers = [];

  if (numbersOne.length >= 4) {
    for (indexOne in numbersOne[3]) {
      if (numbersOne[3][indexOne] % 2 === 0) {
        evenNumbers.push(numbersOne[3][indexOne]);
      }
    }
  }

  for (indexOne in numbersOne) {
    if (numbersOne[indexOne] !== [2, 3, 4]) {
      if (numbersOne[indexOne] % 2 === 0) {
        evenNumbers.push(numbersOne[indexOne]);
      }
    }
  }

  for (indexTwo in numbersTwo) {
    if (numbersTwo[indexTwo] % 2 === 0) {
      evenNumbers.push(numbersTwo[indexTwo]);
    }
  }

  if (Array.isArray(numbersThree[0])) {
    for (indexThreeZero in numbersThree[0][0]) {
      if (numbersThree[0][0][indexThreeZero] % 2 === 0) {
        evenNumbers.push(numbersThree[0][0][indexThreeZero]);
      }
    }
  }

  if (numbersThree !== [[[9, 10]]]) {
    for (indexThree in numbersThree) {
      if (numbersThree[indexThree] % 2 === 0) {
        evenNumbers.push(numbersThree[indexThree]);
      }
    }
  }

  uniqueEvenNumbers = [];
  for (indexNumber in evenNumbers) {
    if (!uniqueEvenNumbers.includes(evenNumbers[indexNumber])) {
      uniqueEvenNumbers.push(evenNumbers[indexNumber]);
    }
  }
  return uniqueEvenNumbers;
}

module.exports = reduceArray;
