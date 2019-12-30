
Uma função que receba o número de anos e messes de uma pessoa e retorne a sua faixa etária. A função pode receber qualquer número inteiro de anos ou meses.

Faixas:
criança (de 0 a 13 anos e 6 meses)
jovem (de 13 anos e 7 meses a 24 anos e 5 meses)
adulta (de 24 anos e 6 meses a 64 anos)
idosa (a partir de 64 anos e 1 mês)

Exemplos:

13 anos e 0 meses = criança
13 anos e 6 meses = criança
13 anos e 7 meses = jovem
24 anos e 5 meses = jovem
24 anos e 6 meses = adulta
64 anos e 0 meses = adulta
64 anos e 1 mês = idosa
67 anos e 0 meses = idosa
10 anos e 43 meses = jovem
5 anos e 708 meses = adulta
5 anos e 709 meses = idosa


require_relative '../exercises'

RSpec.describe '.age_type' do
  context 'with age tell what type' do
    it 'returns 4kid for count' do
      expect(array_count([3, 2, 7, 5])).to eq 4
    end

    it 'returns 7 for max' do
        expect(array_max([3, 2, 7, 5])).to eq 7
      end 
