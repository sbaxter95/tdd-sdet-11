require 'spec_helper' #dependencies - reads spec_helper file first

describe Calculator do #create class called Calculator

  it 'should correctly add two numbers together' do
    calc = Calculator.new
    expect(calc.add(2, 2)).to eq 4
  end

  it 'should correctly subtract two numbers' do
    calc = Calculator.new
    expect(calc.subtract(4, 2)).to eq 2
  end

  it 'should correctly multiply two numbers together' do
    calc = Calculator.new
    expect(calc.multiply(2, 5)).to eq 10
  end

  it 'should correctly divide two numbers' do
    calc = Calculator.new
    expect(calc.divide(10, 5)).to eq 2
  end

end
