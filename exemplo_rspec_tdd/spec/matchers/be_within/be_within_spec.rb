describe 'be_within' do
  # teste entre os numeros
  # o be_within verifica o range do valor 12 abaixo e nele passamos 0.5 e no expect 11.5
  # então verificamos se a diferença entre 11,5 e 12 é de 0.5
  # é um intervalo entre um valor padrão que nosso caso é o 12 eum Delta que é 0.5 que é o interlavo maximo
  # utilizado com numero flutuante
  it { expect(11.5).to be_within(0.5).of(12.0) }

  # podemos fazer com mais de um numero
  it { expect([11.6, 12.1, 12.4]).to all(be_within(0.5).of(12.0)) }
end