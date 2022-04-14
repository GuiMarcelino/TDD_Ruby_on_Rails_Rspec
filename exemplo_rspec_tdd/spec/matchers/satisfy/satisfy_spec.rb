describe 'Satisfy' do
  # o satisfy é um coringa podemos utilizar ele no lugar de varios matchers
  # abaixo esperamos que o 9 seja multiplo de 3.

  it {
    expect(9).to satisfy('be a multiple of 3') do |value|
      value % 3 == 0
    end
  }
end