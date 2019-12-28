require_relative '../exercises'

RSpec.describe '.even_or_odd?' do
  context 'with even numbers integers' do
    it 'returns even for zero' do
      expect(even_or_odd?(0)).to eq 'even'
    end

    it 'returns even for two' do
      expect(even_or_odd?(2)).to eq 'even'
    end

    it 'returns even for two hundred' do
      expect(even_or_odd?(200)).to eq 'even'
    end

    it 'returns even for thousand' do
      expect(even_or_odd?(1000)).to eq 'even'
    end
  end

  context 'with odd numbers integers' do
    it 'returns odd for three' do
      expect(even_or_odd?(3)).to eq 'odd'
    end

    it 'returns odd for five hundred thirty-three' do
      expect(even_or_odd?(533)).to eq 'odd'
    end

    it 'returns odd for seven thousand five hundred sixty-seven' do
      expect(even_or_odd?(7567)).to eq 'odd'
    end
  end
end
