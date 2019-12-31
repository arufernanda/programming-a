RSpec.describe '.array_index' do
  context 'with filter index of values odd' do
    it 'returns 0, 2, 4 for index' do
      expect(array_index([11, 12, 13, 14, 15])).to eq [0, 2, 4]
    end

    it 'returns 1, 3 for index' do
      expect(array_index([10, 11, 12, 13])).to eq [1, 3]
    end
  end
end
