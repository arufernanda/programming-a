const arrayFilter = require('./exercise_18_filter_array');

test('adds the filter only values even', () => {
  expect(arrayFilter([1, 2, 3, 4])).toEqual([2, 4]);
  expect(arrayFilter([8, 9, 10, 11, 12, 14])).toEqual([8, 10, 12, 14]);
});
