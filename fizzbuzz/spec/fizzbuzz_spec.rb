require 'spec_helper'

describe FizzBuzz do

  it 'should find if number is a multiple of 3' do
    fizzbuzz = FizzBuzz.new
    expect(fizzbuzz.three(num)).to eql 0
  end

  it 'should find if number is a multiple of 5' do
    fizzbuzz = FizzBuzz.new
    expect(fizzbuzz.five(num)).to eql 0
  end

  it 'should find if number is a multiple of 15' do
    fizzbuzz = FizzBuzz.new
    expect(fizzbuzz.fifteen(num)).to eql 0 
  end

end
