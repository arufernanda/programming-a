RSpec.describe '.array_reduce_even' do
  context 'with array reduce in numbers even' do
    it 'returns [2, 4, 6, 8, 10] with reduce' do
      expect(
        array_reduce_even([1, 2, 3, [2, 3, 4], 5, 6], [6, 7, 8], [[[9, 10]]])
      ).to eq [2, 4, 6, 8, 10]
    end

    it 'returns [2, 4] with reduce in numbers even' do
      expect(
        array_reduce_even([1, 2], [], [3, 4])
      ).to eq [2, 4]
    end
  end

  context 'with array sum with reduce numbers even' do
    it 'returns 30 with sum and reduce' do
      expect(
        array_reduce_sum([1, 2, 3, [2, 3, 4], 5, 6], [6, 7, 8], [[[9, 10]]])
      ).to eq 30
    end

    it 'returns 6 with sum and reduce' do
      expect(array_reduce_sum([1, 2], [], [3, 4])).to eq 6
    end
  end
end
