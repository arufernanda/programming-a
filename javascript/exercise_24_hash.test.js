const hashSpendingsAll = require('./exercise_24_hash');

transactions = [
  { currency: 'R$', amount: 15.75 },
  { currency: 'R$', amount: -17.50 },
  { currency: 'US$', amount: 7.98 },
  { currency: 'US$', amount: -18.70 },
  { currency: 'US$', amount: 2 },
];
test('adds sum of spendings with hash', () => {
  expect(hashSpendingsAll(transactions, 4.02)).toBe(92.68);
  expect(hashSpendingsAll(transactions, 3.98)).toBe(91.93);
});
