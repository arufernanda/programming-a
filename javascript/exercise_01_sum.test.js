const sum = require('./exercise_01_sum');

test('adds 1+1 to equal 2', () => {
  expect(sum(1, 1)).toBe(2);
  expect(sum(2000, 200)).toBe(2200);
  expect(sum(-5, 10)).toBe(5);
});
