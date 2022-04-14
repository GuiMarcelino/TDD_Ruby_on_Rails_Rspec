describe (1..5), 'Range' do
  it '#cover' do
    expect(subject).to cover(2,5) # espera uqe enha o 2 eo 5 no range, é a mesma coisa que o include so que com range
  end

end