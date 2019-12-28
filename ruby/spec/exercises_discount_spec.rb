require_relative '../exercises'

RSpec.describe 'discount' do
  context 'with discount in values' do
    it 'returns 9 for 10 off in 10' do
      expect(discount(10, 10)).to eq 9
    end

    it 'returns 9 for 10 off in 9' do
      expect(discount(9.90, 10)).to eq 9
    end

    it 'returns 95 for 5 off in 100' do
      expect(discount(100, 5)).to eq 95
    end

    it 'returns 42,92 for 15 off in 50,50' do
      expect(discount(50.50, 15)).to eq 42.925
    end

    it 'returns 750 for 25 off in 1000' do
      expect(discount(1000, 25)).to eq 750
    end

    it 'returns 76 for 2,5 off in 74,10' do
      expect(discount(76, 2.5)).to eq 74.10
    end
  end
end
