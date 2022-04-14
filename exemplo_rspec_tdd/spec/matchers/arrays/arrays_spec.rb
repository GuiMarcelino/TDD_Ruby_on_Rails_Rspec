describe Array.new([1,2,3]) do
  it '#include' do # o include verifica se o elemento esta no array, e so funciona para os elementos
    expect(subject).to include(2)
    expect(subject).to include(1,2)
  end

  it '#match_array' do # o include verifica se o elemento esta no array, e so funciona para os elementos
    expect(subject).to match_array([1,2,3]) # verifica todos os elementos do array, tem que ser exatamente 1,2,3
  end

  it '#contain_exactly' do # exatamente igual match_array, so muda o nome do matcher mesmo
    expect(subject).to contain_exactly(1,2,3) # verifica todos os elementos do array, tem que ser exatamente 1,2,3 e
    # tem que tirar o array do matcher
  end
end