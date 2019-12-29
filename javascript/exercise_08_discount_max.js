function discountMax(price) {
  discountMaxm = Math.floor(((price - 11.0) * 100) / price);
  return discountMaxm;
}

module.exports = discountMax;
