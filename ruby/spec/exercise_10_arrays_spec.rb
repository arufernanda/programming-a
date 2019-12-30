require_relative '../exercises'

RSpec.describe '.array_functions' do
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

    it 'returns 2 for second' do
      expect(array_second([3, 2, 5, 7])).to eq 2
    end

    it 'returns 5 for third' do
      expect(array_third([3, 2, 5, 7])).to eq 5
    end

    it 'returns [3, 2] for first_two' do
        expect(array_fisrt_two([3, 2, 5, 7])).to eq [3, 2]
    end

    it 'returns [2, 5, 7] for last_three' do
      expect(array_last_three([3, 2, 5, 7])).to eq [2, 5, 7]
    end

    it 'returns [7, \'casa\', 8] for last_three' do
      expect(array_last_three([3, 2, 5, 5, 7, 'casa', 8])).to eq [7, 'casa', 8]
    end

    it 'returns [2, 5] for midle_two' do
      expect(array_midle_two([3, 2, 5, 7])).to eq [2, 5]
    end
  end
end
