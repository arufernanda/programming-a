function arrayInArray(numbers) {
  oddNumbers = [];
  evenNumbers = [];
  allNumbers = [];

  for (index in numbers) {
    if (numbers[index] % 2 !== 0) {
      oddNumbers.push(numbers[index]);
    } else {
      evenNumbers.push(numbers[index]);
    }
  }
  allNumbers.push(oddNumbers);
  allNumbers.push(evenNumbers);
  return allNumbers;
}

module.exports = arrayInArray;
