require 'Calculator'

describe Calculator do
  it 'use sum method for 2 numbers' do
    calc = Calculator.new
    result = calc.sum(5, 7)
    expect(result).to eq(12)
  end

  it 'use sum method for 2 numbers with negative numbers' do
    calc = Calculator.new
    result = calc.sum(-5, 7)
    expect(result).to eq(2)
  end
end