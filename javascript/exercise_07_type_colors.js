function typeColor(color) {
  if (color === 'red' || color === 'yellow' || color === 'blue') {
    return 'primary';
  }
  if (color === 'green' || color === 'orange' || color === 'purple') {
    return 'secondary';
  }
  return 'others';
}

module.exports = typeColor;
