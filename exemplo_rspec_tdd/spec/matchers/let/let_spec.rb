$counter = 0

describe 'let' do
  # let, a variável é carrgada apenas quando ela é utilizada pela primeira vez no teste e fica em cache
  # até o teste em questão terminar.
  let(:count) { $counter += 1 }

  it "memoriza o valor" do
    expect(count).to eq(1) # na primeira vez o let carrega o valor
    expect(count).to eq(1) # na segunda vez e as seguintes vezes o valor fica em cache
  end

end