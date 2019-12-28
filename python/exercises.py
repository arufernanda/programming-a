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


def installment(price):
    if price / 12.0 >= 11.5:
        return 12
    if price / 11.0 >= 11.5:
        return 11
    if price / 10.0 >= 11.5:
        return 10
    if price / 9.0 >= 11.5:
        return 9
    if price / 8.0 >= 11.5:
        return 8
    if price / 7.0 >= 11.5:
        return 7
    if price / 6.0 >= 11.5:
        return 6
    if price / 5.0 >= 11.5:
        return 5
    if price / 4.0 >= 11.5:
        return 4
    if price / 3.0 >= 11.5:
        return 3
    if price / 2.0 >= 11.5:
        return 2
    return 1


def concept(grade):
    if grade >= 9.0 or grade == 10.0:
        return 'A'
    if grade >= 7.0 or grade == 8.9:
        return 'B'
    if grade >= 5.0 or grade == 6.9:
        return 'C'
    if grade >= 4.5 or grade == 4.9:
        return 'D'
    return 'F'
