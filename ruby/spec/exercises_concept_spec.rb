require_relative '../exercises'

RSpec.describe 'concept' do
  context 'with concept for grade' do
    it 'returns A for 10,0' do
      expect(concept(10.0)).to eq 'A'
    end

    it 'returns A for 9,5' do
      expect(concept(9.5)).to eq 'A'
    end

    it 'returns F for 3,5' do
      expect(concept(3.5)).to eq 'F'
    end

    it 'returns B for 8,9' do
      expect(concept(8.9)).to eq 'B'
    end

    it 'returns D for 4,5' do
      expect(concept(4.5)).to eq 'D'
    end
  end
end
