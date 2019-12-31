import math


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


def memory(giga):
    cd_rom = math.ceil((giga * 1024) / 700)
    return cd_rom


def type_color(color):
    if color in ('red', 'yellow', 'blue'):
        return 'primary'
    if color in ('green', 'orange', 'purple'):
        return 'secondary'
    return 'others'


def discount_max(price):
    discount_maxm = math.floor(((price - 11.0) * 100) / price)
    return discount_maxm


def array_max(numbers):
    return max(numbers)


def array_min(numbers):
    return min(numbers)


def array_first(numbers):
    return numbers[0]


def array_last(numbers):
    return numbers[-1]


def array_second(numbers):
    return numbers[1]


def array_third(numbers):
    return numbers[2]


def array_fisrt_two(numbers):
    return numbers[:2]


def array_last_three(numbers):
    return numbers[-3:]


def array_midle_two(numbers):
    return numbers[1::2]


def filter_array(numbers):
    filtered_numbers = []

    for number in numbers:
        if number % 2 == 0:
            filtered_numbers.append(number)

    return filtered_numbers


def index_array(numbers):
    filtered_index = []

    for index, number in enumerate(numbers):
        if number % 2 != 0:
            filtered_index.append(index)

    return filtered_index


def array_in_array(numbers):
    odd_numbers = []
    even_numbers = []
    all_numbers = []

    for number in numbers:
        if number % 2 != 0:
            odd_numbers.append(number)
        else:
            even_numbers.append(number)

    all_numbers.append(odd_numbers)
    all_numbers.append(even_numbers)

    return all_numbers
 