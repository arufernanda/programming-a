require './exercises'
puts hash_spendings([
  {'currency' => 'R$', 'amount' => 15.75},
  {'currency' => 'R$', 'amount' => -17.50},
  {'currency' => 'US$', 'amount' => 7.98},
  {'currency' => 'US$', 'amount' => -18.70},
  {'currency' => 'US$', 'amount' => 2}
  ], 4.02).inspect
