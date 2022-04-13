describe 'Classes' do
  # estera que o objeto seja uma instancia da classe passada
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # exatamente a classe
  end

  it 'be_kind_of' do
    expect(10).to be_kind_of(Integer) # pode ser por herança de outra classe
  end

  it 'respond_to' do
    expect('ruby').to respond_to(:size) # verifica se o parâmetro 'ruby' responde ao método size
  end

  it 'be_an/ be_a' do
    expect(10).to be_an(Integer) # mesma coisa que be_kind_of, so muda a leitura pois be an e be a é como se fosse, seja um ou seja uma
    expect('test').to be_an(String)
  end
end