require_relative '../exercises'

RSpec.describe 'installments' do
  context 'with installments for price' do
    it 'returns 1 for 10' do
      expect(installment(10)).to eq 1
    end

    it 'returns 2 for 23' do
      expect(installment(23)).to eq 2
    end

    it 'returns 1 for 20' do
      expect(installment(20)).to eq 1
    end

    it 'returns 1 for 11,50' do
      expect(installment(11.50)).to eq 1
    end

    it 'returns 2 for 27,35' do
      expect(installment(27.35)).to eq 2
    end

    it 'returns 12 for 500' do
      expect(installment(500)).to eq 12
    end

    it 'returns 11 for 137,99' do
      expect(installment(137.99)).to eq 11
    end
  end
end
