function arrayFilter(numbers) {
  filteredNumbers = numbers.filter(function (number) { return number % 2 === 0; });
  return filteredNumbers;
}

module.exports = arrayFilter;
