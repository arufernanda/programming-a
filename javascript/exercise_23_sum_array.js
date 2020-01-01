const reduceArray = require('./exercise_22_reduce_array');

function sumArrays(numbersOne, numbersTwo, numbersThree) {
  evenArrays = [];
  evenArrays = reduceArray(numbersOne, numbersTwo, numbersThree);
  sumOfNumbers = 0;

  for (indexArray in evenArrays) {
    sumOfNumbers += evenArrays[indexArray];
  }

  return sumOfNumbers;
}

module.exports = sumArrays;
