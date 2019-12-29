const discountMax = require('./exercise_08_discount_max');

test('adds discount max', () => {
  expect(discountMax(11.0)).toBe(0);
  expect(discountMax(13.0)).toBe(15);
  expect(discountMax(300.0)).toBe(96);
  expect(discountMax(257.21)).toBe(96);
  expect(discountMax(274.99)).toBe(96);
});
