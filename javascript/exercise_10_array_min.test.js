const arrayMin = require('./exercise_10_array_min');

test('adds the min value this array'  , () => {
  expect(arrayMin([3, 2, 7, 5])).toBe(2);
});
