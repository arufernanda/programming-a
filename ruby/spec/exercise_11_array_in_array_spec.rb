RSpec.describe '.array_in_array' do
  context 'with array in array' do
    it 'returns 2 arrays, one even, one odd' do
      expect(array_in_array([1, 2, 3, 4, 5, 6])).to eq [[1, 3, 5], [2, 4, 6]]
    end
  end
end
