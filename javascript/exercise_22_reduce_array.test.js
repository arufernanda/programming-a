const reduceArray = require('./exercise_22_reduce_array');

test('adds reduce in arrays with values even', () => {
  expect(reduceArray([1, 2, 3, [2, 3, 4], 5, 6], [6, 7, 8], [[[9, 10]]])).toEqual([2, 4, 6, 8, 10]);
  expect(reduceArray([1, 2], [], [3, 4])).toEqual([2, 4]);
});
