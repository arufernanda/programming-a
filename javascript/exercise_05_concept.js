function concept(grade) {
  if (grade >= 9.0 || grade === 10.0) {
    return 'A';
  }
  if (grade >= 7.0 || grade === 8.9) {
    return 'B';
  }
  if (grade >= 5.0 || grade === 6.9) {
    return 'C';
  }
  if (grade >= 4.5 || grade === 4.9) {
    return 'D';
  }
  return 'F';
}

module.exports = concept;
