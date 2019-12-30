require_relative '../exercises'

RSpec.describe '.function_array' do
  context 'with array of numbers' do
    it 'returns 4 for count' do
      expect(array_count([3, 2, 7, 5])).to eq 4
    end

    it 'returns 7 for max' do
      expect(array_max([3, 2, 7, 5])).to eq 7
    end

    it 'returns 2 for min' do
      expect(array_min([3, 2, 5, 7])).to eq 2
    end

    it 'returns 3 for first' do
      expect(array_first([3, 2, 5, 7])).to eq 3
    end

    it 'returns 7 for last' do
      expect(array_last([3, 2, 5, 7])).to eq 7
    end

    it 'returns 7 for last three' do
      expect(array_last_three([3, 2, 7, 5, 8, 9, 0])).to eq [8, 9, 0]
    end
  end
end
