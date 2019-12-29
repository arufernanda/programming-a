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
  cd = ((giga * 1024) / 700).round
  cd
end
