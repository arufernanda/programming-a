require_relative '../exercises'

RSpec.describe '.sum' do
  context 'with integers numbers' do
    it 'returns 4' do
      expect(sum(2, 2)).to eq 4
    end

    it 'returns 2200' do
      expect(sum(2000, 200)).to eq 2200
    end

    it 'returns 5' do
      expect(sum(-5, 10)).to eq 5
    end
  end

  context 'with float numbers' do
    it 'returns 4.2' do
      expect(sum(2.2, 2)).to eq 4.2
    end

    it 'returns 203.1' do
      expect(sum(3.1, 200)).to eq 203.1
    end

    it 'returns 11.3' do
      expect(sum(5.1, 6.2)).to eq 11.3
    end
  end
end
