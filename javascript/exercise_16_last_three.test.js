const arrayLastThree = require('./exercise_16_last_three');

test('adds position of array', () => {
  expect(arrayLastThree([3, 2, 7, 5])).toEqual([2, 7, 5]);
});
