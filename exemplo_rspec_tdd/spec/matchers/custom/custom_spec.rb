RSpec::Matchers.define :be_a_multiple_of do |expected|

  # o expected é o valor que estamos passando, nesse caso o 3
  # actual == subject == 18
  # # então abaixo no match vamos pegar o actual que é o 18, ai usamos o operador modulo %  de expected ou sej do 3
  # então fica assim vou pega o 18 modulo(%) 3 e verificar se é igual a zero == 0
  match do |actual|
    actual % expected == 0
  end

  # customizando mensagem de erro
  failure_message do |actual|
    "expected that #{actual} would be a multiple of #{expected} <<<<<"
  end

  # customizando mensagem de teste passou
  description do
    "be a multiple of #{expected} <<<<"
  end
end

describe 18, 'Custom Matcher' do
  it { is_expected.to be_a_multiple_of(3)}
end