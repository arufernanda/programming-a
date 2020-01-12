RSpec.describe '.parse_file' do
    context 'with debts' do
        let(:expected_result) do
          {
            'total' => 663.73,
            'debt' => [
                {'name' => 'simba', 'value' => 10.24 },
                {'name' => 'scar', 'value' => 50.5 },
                {'name' => 'mufasa', 'value' => 100.00 },
                {'name' => 'sultao', 'value' => 500.00 },
                {'name' => 'jupiter', 'value' => 2.99 },
            ]
           }

      it 'returns value the debt' do
        expect(parse_file('debt.csv')).to eq(expected_result)
      end
    end
end 
