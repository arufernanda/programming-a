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
