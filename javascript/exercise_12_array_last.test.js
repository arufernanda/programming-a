const arrayLast = require('./exercise_12_array_last');

test('adds the last value this array', () => {
  expect(arrayLast([3, 2, 7, 5])).toBe(5);
});
