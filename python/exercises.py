def sum_numbers(number_one, number_two):
    return number_one + number_two


def even_or_odd(num):
    if num % 2 == 0:
        return 'even'
    return 'odd'


def discounts(price, percent_discount):
    discount = (price * percent_discount) / 100
    price_with_discount = price - discount
    if price_with_discount < 9:
        return 9
    return price_with_discount
