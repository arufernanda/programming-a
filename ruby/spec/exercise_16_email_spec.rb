RSpec.describe '.doc_email' do
  let(:emails) do
    [
      'elizabeth@gmail.com',
      'JAMES@GMAIL.com',
      'jennifer@gMAIL.com',
      'john@gmail.com',
      'linda@hotmail.com',
      'michael@HOTmail.com',
      'patricia@yahoo.com',
      'robert@yahoo.com.br',
      'william@YAHOO.COM'
    ]
  end

  context 'with emails' do
    let(:result) do
      {
        'stats' => {
          'gmail.com' => 4,
          'hotmail.com' => 2,
          'yahoo.com' => 2,
          'yahoo.com.br' => 1
        },
        'customers' => [
          { 'name' => 'Elizabeth', 'provider' => 'gmail.com' },
          { 'name' => 'James', 'provider' => 'gmail.com' },
          { 'name' => 'Jennifer', 'provider' => 'gmail.com' },
          { 'name' => 'John', 'provider' => 'gmail.com' },
          { 'name' => 'Linda', 'provider' => 'hotmail.com' },
          { 'name' => 'Michael', 'provider' => 'hotmail.com' },
          { 'name' => 'Patricia', 'provider' => 'yahoo.com' },
          { 'name' => 'Robert', 'provider' => 'yahoo.com.br' },
          { 'name' => 'William', 'provider' => 'yahoo.com' }
        ]
      }
    end

    it 'returns stats and customers' do
      expect(
        doc_email(emails)
      ).to eq result
    end
  end
end
