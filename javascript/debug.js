const hashSpendingsAll = require('./exercise_24_hash');

console.log('result:', hashSpendingsAll([
    {'currency': 'R$', 'amount': 15.75},
    {'currency': 'R$', 'amount': -17.50},
    {'currency': 'US$', 'amount': 7.98},
    {'currency': 'US$', 'amount': -18.70},
    {'currency': 'US$', 'amount': 2}
], 3.98));
