RSpec.describe '.doc_email' do
  let(:email) do
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
              { 'name' => 'elizabeth', 'provider' => 'gmail.com' },
              { 'name' => 'JAMES', 'provider' => 'GMAIL.com' },
              { 'name' => 'jennifer', 'provider' => 'gMAIL.com' },
              { 'name' => 'john', 'provider' => 'gmail.com' },
              { 'name' => 'linda', 'provider' => 'hotmail.com' },
              { 'name' => 'michael', 'provider' => 'HOTmail.com' },
              { 'name' => 'patricia', 'provider' => 'yahoo.com' },
              { 'name' => 'robert', 'provider' => 'yahoo.com.br' },
              { 'name' => 'william', 'provider' => 'YAHOO.COM' }
            ]
        }
    end

    it 'returns stats and customers' do
      expect(
        doc_email(email)
      ).to eq result
    end
  end
end
