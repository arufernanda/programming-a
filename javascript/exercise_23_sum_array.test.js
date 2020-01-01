const sumArrays = require('./exercise_23_sum_array');

test('adds sum arrays with values even', () => {
  expect(sumArrays([1, 2, 3, [2, 3, 4], 5, 6], [6, 7, 8], [[[9, 10]]])).toBe(30);
  expect(sumArrays([1, 2], [], [3, 4])).toBe(6);
});
