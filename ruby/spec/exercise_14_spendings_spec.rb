RSpec.describe '.hash_spendings' do
  let(:transactions) do
    [
      { 'currency' => 'R$', 'amount' => 15.75 },
      { 'currency' => 'R$', 'amount' => -17.50 },
      { 'currency' => 'US$', 'amount' => 7.98 },
      { 'currency' => 'US$', 'amount' => -18.70 },
      { 'currency' => 'US$', 'amount' => 2 }
    ]
  end

  context 'with total spend' do
    it 'returns 92,68 the dollar at R$4,02' do
      expect(
        hash_spendings(transactions, 4.02)
      ).to eq 92.67
    end

    it 'returns 91,93 the dollar at R$3,98' do
      expect(
        hash_spendings(transactions, 3.98)
      ).to eq 91.93
    end
  end
end
