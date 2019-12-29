require_relative '../exercises'

RSpec.describe 'discount_max' do
  context 'with discount max for price' do
    it 'returns 0 for 11' do
      expect(discount_max(11.0)).to eq 0
    end

    it 'returns 15 for 13' do
      expect(discount_max(13.0)).to eq 15
    end

    it 'returns 96 for 300' do
      expect(discount_max(300.0)).to eq 96
    end

    it 'returns 95 for 257,21' do
      expect(discount_max(257.21)).to eq 95
    end

    it 'returns 96 for 275' do
      expect(discount_max(275.0)).to eq 96
    end

    it 'returns 95 for 274,99' do
      expect(discount_max(274.99)).to eq 95
    end
  end
end
