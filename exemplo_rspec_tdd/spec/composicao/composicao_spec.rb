describe 'Ruby on Rails' do
  # abaixo valida se a palavra comeca com Ruby e termina com Rails utilzando a comsição and ou seja 'e'
  it { is_expected.to start_with("Ruby").and end_with("Rails") }

  # abaixo valida se nesse array contém uma 'OR' ou seja ou outra fruta passada na composição da minha expectativa
  # ou seja passado no it
  it {expect(fruta).to eq('banana').or eq('laranja').or eq('uva') }

  def fruta
    %w(banana laranja uva).sample
  end
end