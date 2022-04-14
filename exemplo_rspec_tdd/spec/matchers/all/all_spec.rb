describe 'all' do
  # abaixo espero que todos os elementos do meu array sejam inpar e da classe integer
  it { expect([1,7,9]).to all( (be_odd).and be_an(Integer) )}

  # abaixo espero que todos os elementos do meu array sejam da classe String e contenha a letra r
  it { expect(%w[ruby rails]).to all((be_a(String)).and include('r') )}


end