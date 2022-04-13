describe 'Matchers Igualdade' do
  it 'equal or be' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to be(x)
    expect(y).not_to equal(x)
  end

  it 'eql or eq' do
    x = 'ruby'
    y = 'ruby'
    expect(x).to eq(y)
  end
end