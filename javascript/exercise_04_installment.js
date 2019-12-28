function installment(price) {
  if (price / 12.0 >= 11.5) {
    return 12;
  }
  if (price / 11.0 >= 11.5) {
    return 11;
  }
  if (price / 10.0 >= 11.5) {
    return 10;
  }
  if (price / 9.0 >= 11.5) {
    return 9;
  }
  if (price / 8.0 >= 11.5) {
    return 8;
  }
  if (price / 7.0 >= 11.5) {
    return 7;
  }
  if (price / 6.0 >= 11.5) {
    return 6;
  }
  if (price / 5.0 >= 11.5) {
    return 5;
  }
  if (price / 4.0 >= 11.5) {
    return 4;
  }
  if (price / 3.0 >= 11.5) {
    return 3;
  }
  if (price / 2.0 >= 11.5) {
    return 2;
  }
  return 1;
}

module.exports = installment;
