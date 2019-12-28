const discount = require('./exercise_03_discount');

test('adds discounts in prices', () => {
  expect(discount(10, 10)).toBe(9);
  expect(discount(100, 5)).toBe(95);
  expect(discount(50.50, 10)).toBe(45.45);
  expect(discount(1000, 25)).toBe(750);
  expect(discount(76, 2.5)).toBe(74.10);
  expect(discount(9.90, 10)).toBe(9);
});
