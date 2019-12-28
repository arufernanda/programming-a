const concept = require('./exercise_05_concept');

test('adds concept in prices', () => {
  expect(concept(9.5)).toBe('A');
  expect(concept(3.5)).toBe('F');
  expect(concept(8.9)).toBe('B');
  expect(concept(4.5)).toBe('D');
});
