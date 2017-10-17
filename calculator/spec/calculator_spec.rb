require 'spec_helper' #dependencies - reads spec_helper file first

describe Calculator do #create class called Calculator

  it 'should correctly add two numbers together' do
    calc = Calculator.new
    expect(calc.add(2, 2)).to eq 4
  end

end
