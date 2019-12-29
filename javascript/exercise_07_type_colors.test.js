const typeColor = require('./exercise_07_type_colors');

test('adds type of colors', () => {
  expect(typeColor('red')).toBe('primary');
  expect(typeColor('orange')).toBe('secondary');
  expect(typeColor('pink')).toBe('others');
  expect(typeColor('magent')).toBe('others');
});
