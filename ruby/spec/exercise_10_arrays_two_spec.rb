RSpec.describe '.array_two' do
  context 'with array of numbers two' do
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
      expect(array_last_three([3, 2, 5, 7, 'casa', 8])).to eq [7, 'casa', 8]
    end

    it 'returns [2, 5] for midle_two' do
      expect(array_midle_two([3, 2, 5, 7])).to eq [2, 5]
    end
  end
end
