function arrayFilterTwo(numbers) {
  filteredNumbers = [];

  for (index in numbers) {
    if (numbers[index] % 2 === 0) {
      filteredNumbers.push(numbers[index]);
    }
  }

  return filteredNumbers;
}

module.exports = arrayFilterTwo;
