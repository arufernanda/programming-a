RSpec.describe '.hash_bank' do
  let(:transactions) do
    [
      { 'description' => 'pão', 'currency' => 'R$', 'amount' => -13.21 },
      { 'description' => 'chocolate', 'currency' => 'US$', 'amount' => -2.35 },
      { 'description' => 'água', 'currency' => 'R$', 'amount' => -7.10 },
      { 'description' => 'freela', 'currency' => 'R$', 'amount' => 75.00 }
    ]
  end

  let(:debt) do
    [
      { 'description' => 'refrigerante', 'currency' => 'R$', 'amount' => 7.10 },
      { 'description' => 'arroz', 'currency' => 'R$', 'amount' => 13.21 },
      { 'description' => 'café', 'currency' => 'US$', 'amount' => 7.15 },
      { 'description' => 'milho', 'currency' => 'R$', 'amount' => 15.29 },
      { 'description' => 'suco de laranja',
        'currency' => 'R$', 'amount' => 9.62 }
    ]
  end

  context 'with total bank account' do
    let(:expect_result) do
      {
        'balance' => 0.02,
        'transactions' => [
          { 'description' => 'refrigerante',
            'currency' => 'R$', 'amount' => -7.10 },
          { 'description' => 'arroz', 'currency' => 'R$', 'amount' => -13.21 },
          { 'description' => 'milho',
            'currency' => 'R$', 'amount' => -15.29 },
          { 'description' => 'suco de laranja',
            'currency' => 'R$', 'amount' => -9.62 },
          { 'description' => 'pão', 'currency' => 'R$',
            'amount' => -13.21 },
          { 'description' => 'chocolate',
            'currency' => 'US$', 'amount' => -2.35 },
          { 'description' => 'água', 'currency' => 'R$', 'amount' => -7.10 },
          { 'description' => 'freela', 'currency' => 'R$', 'amount' => 75.00 }
        ],
        'peding_debt' => [
          { 'description' => 'café', 'currency' => 'US$', 'amount' => 28.74 }
        ]
      }
    end

    it 'returns balance = 2,49, all transactions,
    peding debt = description:suco de laranja currency: R$, amount: 9,62 ' do
      expect(
        hash_bank(transactions, debt, 4.02)
      ).to eq expect_result
    end
  end
end
