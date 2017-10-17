require 'spec_helper'

describe FizzBuzz do

  it 'should make multiples of 3 say Fizz' do
    turn = FizzBuzz.new
    game = turn.logic
    expect(game[2]).to eq('Fizz')
  end

  it 'should find if number is a multiple of 5' do
    turn = FizzBuzz.new
    game = turn.logic
    expect(game[4]).to eq('Buzz')
  end

  it 'should find if number is a multiple of 15' do
    turn = FizzBuzz.new
    game = turn.logic
    expect(game[14]).to eq('FizzBuzz')
  end

end
