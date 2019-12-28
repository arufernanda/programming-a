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
