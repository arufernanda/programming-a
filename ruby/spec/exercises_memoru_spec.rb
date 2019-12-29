require_relative '../exercises'

RSpec.describe 'memory' do
  context 'with memory for backup' do
    it 'returns 5 for 3.4 gigas' do
      expect(memory(3.4)).to eq 5
    end

    it 'returns 2 for 1.4 gigas' do
      expect(memory(1.4)).to eq 2
    end

    it 'returns 1 for 1 gigas' do
      expect(memory(1)).to eq 1
    end
  end
end
