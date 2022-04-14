require 'contador'

describe 'Matcher change'  do
  # abaixo espero que que quando chamar a classe contador usando o metodo incrementa, o valor
  # de Contador.qtd altere
  it { expect{(Contador.incrementa)}.to change { Contador.qtd} }

  # abaixo tambme valido a mudança mas alem disso valido que alteração na quantidade foi de somente 1
  it { expect{(Contador.incrementa)}.to change { Contador.qtd}.by(1) }

  # abaixo a validação fica ainda melhor valido que o valor alterou do numero atual para o seguinte
  it { expect{(Contador.incrementa)}.to change { Contador.qtd}.from(2).to(3) }



end