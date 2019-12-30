const arrayMidleTwo = require('./exercise_17_midle_two');

test('adds the midle two value this array', () => {
  expect(arrayMidleTwo([3, 2, 7, 5])).toEqual([2, 7]);
});
