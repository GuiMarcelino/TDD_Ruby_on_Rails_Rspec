require 'Calculator'

describe Calculator do
  context '#div' do
    it 'divid by 0' do
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError) # assim validamos o tipo do error
      expect{subject.div(3, 0)}.to raise_error("divided by 0") # assim validamos qual a messagem
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, "divided by 0") # assim validamos os dois
      expect{subject.div(3, 0)}.to raise_error(/divided/) # assim quando não sabemos exatamente a menssagem,
      # mas sabemos que contém a palavra divided usamos regex "expressão regular para validar o erro"

    end

  end
  context '#sum' do
    it 'positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to eq(12)
    end

    it 'negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end

    it 'negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end
end