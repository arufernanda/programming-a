#test

def test_hash_spendings():
    transactions = [
        {'currency': 'R$', 'amount': 15.75},
        {'currency': 'R$', 'amount': -17.50},
        {'currency': 'US$', 'amount': 7.98},
        {'currency': 'US$', 'amount': -18.70},
        {'currency': 'US$', 'amount': 2}
    ]

    assert exercises.hash_spendings(transactions, 4.02) == 92.68
    assert exercises.hash_spendings(transactions, 3.98) == 91.93


def test_bank_account():
    transactions = [
        { 'description': 'pão', 'currency': 'R$', 'amount': -13.21 },
        { 'description': 'chocolate', 'currency': 'US$', 'amount': -2.35 },
        { 'description': 'água', 'currency': 'R$', 'amount': -7.10 },
        { 'description': 'freela', 'currency': 'R$', 'amount': 75.00 }
    ]

    debt = [ 
        { 'description': 'refrigerante', 'currency': 'R$', 'amount': 7.10 },
        { 'description': 'arroz', 'currency': 'R$', 'amount': 13.21 },
        { 'description': 'café', 'currency': 'US$', 'amount': 7.15 },
        { 'description': 'milho', 'currency': 'R$', 'amount': 15.29 },
        { 'description': 'suco de laranja', 'currency': 'R$', 'amount': 9.62 }
    ]

    assert exercises.bank_account(transactions, debt, 4.02) == [
        {'balance': 0.02,'transactions': [
        { 'description': 'refrigerante', 'currency': 'R$', 'amount': -7.10 },
        { 'description': 'arroz', 'currency': 'R$', 'amount': -13.21 },
        { 'description': 'milho', 'currency': 'R$', 'amount': -15.29 },
        { 'description': 'suco de laranja', 'currency': 'R$', 'amount': -9.62 },
        { 'description': 'pão', 'currency': 'R$','amount': -13.21 },
        { 'description': 'chocolate', 'currency': 'US$', 'amount': -2.35 },
        { 'description': 'água', 'currency': 'R$', 'amount': -7.10 },
        { 'description': 'freela', 'currency': 'R$', 'amount': 75.00 }
        ],
        'peding_debt': [
        { 'description': 'café', 'currency': 'US$', 'amount': 28.74 }
        ]
        }
    ]

#exercise

def bank_account(transactions, debt, dollar):
    balance_trans = 0
    peding_debt = []
    transactions_done = []
    debt_negative = []

    for for_transactions in transactions:
        if for_transactions['currency'] == 'R$':
            balance_trans = for_transactions['amount'] + balance_trans


        if for_transactions['currency'] == 'US$':
            balance_trans = (for_transactions['amount'] * dollar) + balance_trans

    for for_debt in debt:
        if for_debt['currency'] == 'US$':
            for_debt['amount'] = round((for_debt['amount'] * dollar), 2)

        if balance_trans >= for_debt['amount']:
            balance_trans = balance_trans - for_debt['amount']
            debt_negative = {'description': for_debt['description'],
                             'currency': for_debt['currency'],
                             'amount': -(for_debt['amount'])}
            transactions_done = debt_negative
        else:
            peding_debt = for_debt

    for for_transactions in transactions:
        transactions_done = for_transactions

    expect_result = {'balance': round(balance_trans, 2) ,
                     'transactions': [transactions_done],
                     'peding_debt': [peding_debt]}

    return expect_result
