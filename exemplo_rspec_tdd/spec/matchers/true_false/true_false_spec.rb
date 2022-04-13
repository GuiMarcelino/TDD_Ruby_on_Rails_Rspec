describe 'Matchers True/False' do
  it 'be_truthy true' do
    x = 10.even?
    expect(x).to be_truthy
  end

  it 'be_falsey' do
    x = 10.odd?
    expect(x).to be_falsey
  end

  it 'be_nil' do
    x = nil
    expect(x).to be_nil
  end

end