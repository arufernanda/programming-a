const arrayFilterTwo = require('./exercise_19_filter_array_two');

test('adds the filter only values even', () => {
  expect(arrayFilterTwo([1, 2, 3, 4])).toEqual([2, 4]);
  expect(arrayFilterTwo([8, 9, 10, 11, 12, 14])).toEqual([8, 10, 12, 14]);
});
