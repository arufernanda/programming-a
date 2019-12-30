const arrayLastThree = require('./exercise_16_last_three');

test('adds position of array', () => {
  expect(arrayLastThree([3, 2, 7, 5, 8, 9, 0])).toEqual([8, 9, 0]);
});
