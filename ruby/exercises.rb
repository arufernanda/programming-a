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

