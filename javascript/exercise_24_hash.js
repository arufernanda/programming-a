function hashSpendingsAll(transactions, dollar) {
  spendingInReal = 0;

  for (indexArray in transactions) {
    if ((transactions[indexArray].amount < 0) && (transactions[indexArray].currency === 'R$')) {
      spendingInReal += transactions[indexArray].amount;
    }
  }

  for (indexArray in transactions) {
    if ((transactions[indexArray].amount < 0) && (transactions[indexArray].currency === 'US$')) {
      spendingInReal += transactions[indexArray].amount * dollar;
    }
  }

  reais = Math.abs(spendingInReal);
  cents = reais * 100;
  roundedCents = Math.ceil(cents);
  roundedPrice = roundedCents / 100;

  return roundedPrice;
}

module.exports = hashSpendingsAll;
