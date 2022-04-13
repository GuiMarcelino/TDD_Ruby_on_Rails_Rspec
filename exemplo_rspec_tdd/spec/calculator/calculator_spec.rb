require 'Calculator'

describe Calculator do
  context '#sum' do
    it 'positive numbers' do
      calc = Calculator.new
      result = calc.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'negative and positive numbers' do
      calc = Calculator.new
      result = calc.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'negative numbers' do
      calc = Calculator.new
      result = calc.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end
end