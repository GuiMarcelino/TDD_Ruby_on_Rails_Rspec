describe 'Matchers Comparação' do
  it '>' do
    x = 5
    expect(x).to be > 3
  end

  it '>=' do
    x = 5
    expect(x).to be >= 3
  end

  it '<' do
    x = 5
    expect(x).to be < 8
  end

  it '<=' do
    x = 5
    expect(x).to be <= 5
  end

  it 'be_between inclusive' do
    # o be_between verifica de valor esta entre 2 e 7
    # o inclusive vai consdera o 2 eo 7 tambem
    expect(5).to be_between(2, 7).inclusive
    expect(2).to be_between(2, 7).inclusive
  end

  it 'be_between exclusive' do
    # o be_between verifica de valor esta entre 2 e 7
    # o exclusive desconsidera o 2 eo 7
    expect(5).to be_between(2, 7).exclusive
    expect(3).to be_between(2, 7).exclusive
  end

  it 'match regex expressão regular' do
  expect("jose@com.br").to match(/..@../)
  end

  it 'start_with' do
    # esperamos que começa com o valo passado pode ser string o numeros
    expect("Sr.Guilherme").to start_with('Sr')
    expect([12, 7, 89]).to start_with(12)
  end

  it 'end_with' do
    # esperamos que termine com o valo passado pode ser string o numeros
    expect("Sr.Guilherme").to end_with('me')
    expect([12, 7, 89]).to end_with(89)
  end
end