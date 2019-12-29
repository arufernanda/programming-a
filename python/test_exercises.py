import exercises


def test_sum_number():
    assert exercises.sum_numbers(2, 2) == 4
    assert exercises.sum_numbers(2000, 200) == 2200
    assert exercises.sum_numbers(-5, 10) == 5
    assert exercises.sum_numbers(2.2, 2) == 4.2
    assert exercises.sum_numbers(3.1, 200) == 203.1
    assert exercises.sum_numbers(5.1, 6.2) == 11.3


def test_even_or_odd():
    assert exercises.even_or_odd(0) == 'even'
    assert exercises.even_or_odd(2) == 'even'
    assert exercises.even_or_odd(200) == 'even'
    assert exercises.even_or_odd(1000) == 'even'
    assert exercises.even_or_odd(3) == 'odd'
    assert exercises.even_or_odd(533) == 'odd'
    assert exercises.even_or_odd(7567) == 'odd'


def test_discount():
    assert exercises.discounts(10, 10) == 9
    assert exercises.discounts(100, 5) == 95
    assert exercises.discounts(50.50, 10) == 45.45
    assert exercises.discounts(1000, 25) == 750
    assert exercises.discounts(76, 2.5) == 74.10
    assert exercises.discounts(9.90, 10) == 9


def test_installment():
    assert exercises.installment(23) == 2
    assert exercises.installment(20) == 1
    assert exercises.installment(10) == 1
    assert exercises.installment(11.59) == 1
    assert exercises.installment(27.35) == 2
    assert exercises.installment(137.99) == 11
    assert exercises.installment(500) == 12


def test_concept():
    assert exercises.concept(9.5) == 'A'
    assert exercises.concept(3.5) == 'F'
    assert exercises.concept(8.9) == 'B'
    assert exercises.concept(4.5) == 'D'


def test_memory():
    assert exercises.memory(3.4) == 5
    assert exercises.memory(1.4) == 3
    assert exercises.memory(1) == 2


def test_type_color():
    assert exercises.type_color('red') == 'primary'
    assert exercises.type_color('orange') == 'secondary'
    assert exercises.type_color('pink') == 'others'
    assert exercises.type_color('magent') == 'others'
