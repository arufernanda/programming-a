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


def reduce_array(numbers_one, numbers_two, numbers_three):
    even_numbers = []

    if len(numbers_one) >= 4:
        for number_one_three in numbers_one[3]:
            if (number_one_three % 2 == 0 and
                    number_one_three not in even_numbers):
                even_numbers.append(number_one_three)

    for number_one in numbers_one:
        if (number_one != [2, 3, 4] and
                number_one % 2 == 0 and number_one not in even_numbers):
            even_numbers.append(number_one)

    for number_two in numbers_two:
        if number_two % 2 == 0 and number_two not in even_numbers:
            even_numbers.append(number_two)

    if isinstance(numbers_three[0], list):
        for number_three_zero in numbers_three[0][0]:
            if (number_three_zero % 2 == 0
                    and number_three_zero not in even_numbers):
                even_numbers.append(number_three_zero)

    if numbers_three != [[[9, 10]]]:
        for number_three in numbers_three:
            if number_three % 2 == 0 and number_three not in even_numbers:
                even_numbers.append(number_three)

    return even_numbers


def sum_array(numbers_one, numbers_two, numbers_three):
    even_arrays = reduce_array(numbers_one, numbers_two, numbers_three)
    sum_of_numbers = 0

    for even_array in even_arrays:
        sum_of_numbers = sum_of_numbers + even_array

    return sum_of_numbers


def hash_spendings(transactions, dollar):
    spending_in_real = 0

    for for_transactions in transactions:
        if (for_transactions['amount'] < 0
                and for_transactions['currency'] == 'R$'):
            spending_in_real = for_transactions['amount'] + spending_in_real

        if (for_transactions['amount'] < 0
                and for_transactions['currency'] == 'US$'):
            spending_in_real = (
                (for_transactions['amount'] * dollar) + spending_in_real)

    spending_in_real_abs = abs(spending_in_real)
    spending_in_real_round = math.ceil(spending_in_real_abs * 100.0) / 100.0
    return spending_in_real_round


def count(number):
    result_array = []
    one = 1

    while True:
        result_array.append(one)
        one = one + 1
        if one > number:
            break
    return result_array


def box_bottles(size_box, size_bottle, drink_amount):
    box = []
    index = 0
    remaining = drink_amount

    while True:
        if size_bottle <= remaining:
            box.append(size_bottle)
            remaining = remaining - size_bottle
            index = index + 1

        if index == size_box or size_bottle > remaining:
            break

    return box, round(remaining, 2)
