require_relative '../exercises'

RSpec.describe 'colors_type' do
  context 'with type for colors' do
    it 'return primary for red' do
      expect(colors_type('red')).to eq 'primary'
    end

    it 'return secondary for orange' do
      expect(colors_type('orange')).to eq 'secondary'
    end

    it 'return others for pink' do
      expect(colors_type('pink')).to eq 'others'
    end

    it 'return others for magent' do
      expect(colors_type('magent')).to eq 'others'
    end
  end
end
