function discount(price, percentDiscount) {
  discounts = (price * percentDiscount) / 100;
  priceWithDiscount = price - discounts;
  if (priceWithDiscount < 9) {
    return 9;
  }
  return priceWithDiscount;
}

module.exports = discount;
