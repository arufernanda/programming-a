const arrayInArray = require('./exercise_21_array_in_array');

test('adds array with one for even values, other for odd values', () => {
  expect(arrayInArray([1, 2, 3, 4, 5, 6])).toEqual([[1, 3, 5], [2, 4, 6]]);
});
