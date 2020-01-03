require './exercises'
transactions = [
  { 'description' => 'pão', 'currency' => 'R$', 'amount' => -13.21 },
  { 'description' => 'chocolate', 'currency' => 'US$', 'amount' => -2.35 },
  { 'description' => 'água', 'currency' => 'R$', 'amount' => -7.10 },
  { 'description' => 'freela', 'currency' => 'R$', 'amount' => 75.00 }
]

debt = [
  { 'description' => 'refrigerante', 'currency' => 'R$', 'amount' => 7.10 },
  { 'description' => 'arroz', 'currency' => 'R$', 'amount' => 13.21 },
  { 'description' => 'café', 'currency' => 'US$', 'amount' => 7.15 },
  { 'description' => 'milho', 'currency' => 'R$', 'amount' => 15.29 },
  { 'description' => 'suco de laranja', 'currency' => 'R$', 'amount' => 9.62 }
]

puts hash_bank(transactions, debt, 4.02).inspect
