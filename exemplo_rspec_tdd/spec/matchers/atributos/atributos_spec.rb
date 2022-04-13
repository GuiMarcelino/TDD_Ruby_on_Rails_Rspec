require 'pessoa'

describe 'Atributos' do
  # abaixo verificamos se a instancia contem os paramentros nome e idade e com os valores passados
  it 'have_attibutes' do
    pessoa = Pessoa.new
    pessoa.nome = 'guilherme'
    pessoa.idade = 30
    expect(pessoa).to have_attributes(nome: 'guilherme', idade: 30)
  end

  it 'have_attibutes' do
    # abaixo verificamos se o nome começa com g, e se a idade é igual o maior que 30
    pessoa = Pessoa.new
    pessoa.nome = 'guilherme'
    pessoa.idade = 30
    expect(pessoa).to have_attributes(nome: start_with 'g', idade: (be >= 30))
  end

end