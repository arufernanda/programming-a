const arrayIndex = require('./exercise_20_index_array');

test('adds the filter only values odd', () => {
  expect(arrayIndex([11, 12, 13, 14, 15])).toEqual([0, 2, 4]);
  expect(arrayIndex([10, 11, 12, 13])).toEqual([1, 3]);
});
