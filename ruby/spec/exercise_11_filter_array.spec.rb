RSpec.describe '.array_filter_even' do
  context 'with array filter of even' do
    it 'returns 2 and 4 with filter' do
      expect(array_filter([1, 2, 3, 4])).to eq [2, 4]
    end

    it 'returns 8, 10, 12, 14 with filter' do
      expect(array_filter([8, 9, 10, 11, 12, 14])).to eq [8, 10, 12, 14]
    end
  end
end
