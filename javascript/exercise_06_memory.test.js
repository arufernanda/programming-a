const memory = require('./exercise_06_memory');

test('adds cd-room for backup in giga', () => {
  expect(memory(3.5)).toBe(5);
  expect(memory(1.4)).toBe(2);
  expect(memory(1)).toBe(1);
});
