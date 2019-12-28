const installment = require('./exercise_04_installment');

test('adds installment in prices', () => {
  expect(installment(23)).toBe(2);
  expect(installment(20)).toBe(1);
  expect(installment(10)).toBe(1);
  expect(installment(11.59)).toBe(1);
  expect(installment(137.99)).toBe(11);
  expect(installment(500)).toBe(12);
});
