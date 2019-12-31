function arrayIndex(numbers) {
  filteredIndex = [];

  for (index in numbers) {
    if (numbers[index] % 2 !== 0) {
      filteredIndex.push(parseInt(index, 10));
    }
  }

  return filteredIndex;
}

module.exports = arrayIndex;
