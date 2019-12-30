const arrayFirstTwo = require('./exercise_15_first_two');

test('adds the two first value this array', () => {
  expect(arrayFirstTwo([3, 2, 7, 5])).toEqual([3, 2]);
});
