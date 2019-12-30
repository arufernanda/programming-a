const arrayFirst = require('./exercise_11_array_first');

test('adds the first value this array', () => {
  expect(arrayFirst([3, 2, 7, 5])).toBe(3);
});
