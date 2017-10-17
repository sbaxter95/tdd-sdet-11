require 'spec_helper'

describe FizzBuzz do

  it 'should print numbers' do
    turn = FizzBuzz.new
    game = turn.logic
    print game
    expect(game.length).to eq(100)
  end

  it 'should make multiples of 3 say Fizz' do
    turn = FizzBuzz.new
    game = turn.logic
    expect(game[2]).to eq('Fizz')
  end

  it 'should make multiples of 5 say Buzz' do
    turn = FizzBuzz.new
    game = turn.logic
    print expect(game[4]).to eq('Buzz')
  end

  it 'should make multiples of 15 say FizzBuzz' do
    turn = FizzBuzz.new
    game = turn.logic
    print expect(game[14]).to eq('FizzBuzz')
  end

end
