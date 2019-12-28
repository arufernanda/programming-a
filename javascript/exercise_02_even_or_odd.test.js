const evenOrOdd = require('./exercise_02_even_or_odd');

test('adds numbers even', () => {
  expect(evenOrOdd(0)).toBe('even');
  expect(evenOrOdd(2)).toBe('even');
  expect(evenOrOdd(2000)).toBe('even');
});

test('adds numbers odd', () => {
  expect(evenOrOdd(3)).toBe('odd');
  expect(evenOrOdd(533)).toBe('odd');
  expect(evenOrOdd(75037)).toBe('odd');
});
