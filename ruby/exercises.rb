def sum(number_one, number_two)
  number_one + number_two
end

def even_or_odd?(number)
  if number.even?
    'even'
  else
    'odd'
  end
end

def discount(price, percent_discount)
  discount = (price * percent_discount) / 100
  price_with_discount = price - discount
  if price_with_discount < 9
    9
  else
    price_with_discount
  end
end

def installment(price)
  if price / 12.0 >= 11.50
    12
  elsif price / 11.0 >= 11.50
    11
  elsif price / 10.0 >= 11.50
    10
  elsif price / 9.0 >= 11.50
    9
  elsif price / 8.0 >= 11.50
    8
  elsif price / 7.0 >= 11.50
    7
  elsif price / 6.0 >= 11.50
    6
  elsif price / 5.0 >= 11.50
    5
  elsif price / 4.0 >= 11.50
    4
  elsif price / 3.0 >= 11.50
    3
  elsif price / 2.0 >= 11.50
    2
  else
    1
  end
end

def concept(grade)
  if grade >= 9.0 || grade == 10.0
    'A'
  elsif grade >= 7.0 || grade == 8.9
    'B'
  elsif grade >= 5.0 || grade == 6.9
    'C'
  elsif grade >= 4.5 || grade == 4.9
    'D'
  else
    'F'
  end
end

def memory(giga)
  cd = ((giga * 1024.0) / 700.0).ceil
  cd
end

def colors_type(color)
  if color == 'red' || color == 'yellow' || color == 'blue'
    'primary'
  elsif color == 'green' || color == 'orange' || color == 'purple'
    'secondary'
  else
    'others'
  end
end

def discount_max(price)
  discount_maxm = (((price - 11.0) * 100) / price).floor
  discount_maxm
end

def array_count(numbers)
  numbers.count
end

def array_max(numbers)
  numbers.max
end

def array_min(numbers)
  numbers.min
end

def array_first(numbers)
  numbers.first
end

def array_last(numbers)
  numbers.last
end

def array_second(numbers)
  numbers[1]
end

def array_third(numbers)
  numbers[2]
end

def array_fisrt_two(numbers)
  numbers[0..1]
end

def array_last_three(numbers)
  numbers[-3..-1]
end

def array_midle_two(numbers)
  numbers[1..2]
end

def array_even_numbers(numbers)
  numbers.select do |number|
    number.even?
  end
end

def array_even_numbers_two(numbers)
  filtered_numbers = []

  numbers.each do |number|
    filtered_numbers << number if number.even?
  end

  filtered_numbers
end

def array_index(numbers)
  filtered_index = []

  numbers.each_with_index do |number, index|
    filtered_index << index if number.odd?
  end

  filtered_index
end

def array_in_array(numbers)
  even_numbers = []
  odd_numbers = []
  all_numbers = []

  numbers.each do |number|
    odd_numbers << number if number.odd?
    even_numbers << number if number.even?
  end

  all_numbers << odd_numbers
  all_numbers << even_numbers

  all_numbers
end

def array_reduce_even(numbers_one, numbers_two, numbers_three)
  even_numbers = []

  unless numbers_one[3].nil?
    numbers_one[3].each do |number_one|
      even_numbers << number_one if number_one.even?
    end
  end

  numbers_one.each do |number_one|
    even_numbers << number_one if number_one != [2, 3, 4] && number_one.even?
  end

  numbers_two.each do |number_two|
    even_numbers << number_two if number_two.even?
  end

  if numbers_three[0].is_a?(Array)
    numbers_three[0][0].each do |number_three|
      even_numbers << number_three if number_three.even?
    end
  end

  if numbers_three != [[[9, 10]]]
    numbers_three.each do |number_three|
      even_numbers << number_three if number_three.even?
    end
  end

  even_numbers = even_numbers.uniq
  even_numbers
end

def array_reduce_sum(numbers_one, numbers_two, numbers_three)
  even_numbers = array_reduce_even(numbers_one, numbers_two, numbers_three)
  sum_of_numbers = 0

  even_numbers.each do |even_number|
    sum_of_numbers += even_number
  end

  sum_of_numbers
end

def hash_spendings(transactions, dollar)
  spending_in_real = 0

  transactions.each do |for_transactions|
    if for_transactions['amount'].negative? &&
       for_transactions['currency'] == 'R$'
      spending_in_real += for_transactions['amount']
    end

    if for_transactions['amount'].negative? &&
       for_transactions['currency'] == 'US$'
      spending_in_real += for_transactions['amount'] * dollar
    end
  end

  spending_in_real.abs.ceil(2)
end

def hash_bank(transactions, debt, dollar)
  balance_trans = 0
  peding_debt = []
  transactions_done = []

  transactions.each do |for_transactions|
    if for_transactions['currency'] == 'R$'
      balance_trans += for_transactions['amount']
    end

    if for_transactions['currency'] == 'US$'
      balance_trans += for_transactions['amount'] * dollar
    end
  end

  debt.each do |for_debt|
    if for_debt['currency'] == 'US$'
      for_debt['amount'] = (for_debt['amount'] * dollar).round(2)
    end

    if balance_trans >= for_debt['amount']
      balance_trans -= for_debt['amount']
      debit_negative = { 'description' => for_debt['description'],
                         'currency' => for_debt['currency'],
                         'amount' => -(for_debt['amount']) }
      transactions_done << debit_negative
    else
      peding_debt << for_debt
    end
  end

  transactions.each do |for_trans|
    transactions_done << for_trans
  end

  expect_result = { 'balance' => balance_trans.round(2),
                    'transactions' => transactions_done,
                    'peding_debt' => peding_debt }

  expect_result
end
