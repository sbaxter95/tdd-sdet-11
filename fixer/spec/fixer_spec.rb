require 'spec_helper'

describe 'currency tests' do

  before(:all) do
    @json = JSON.parse(File.read('fixer.json'))
  end

  it 'should have a base rate of Europe' do
    expect(@json['base']).to eq "EUR"
  end

  it 'should have rates that are of type hash' do
    expect(@json['rates']).to be_kind_of(Hash)
  end

  it 'should have exchange rates for each country' do
    @json['rates'].each do |i|
      expect(i[1]).to be_kind_of(Float)
    end
  end

  it 'should only have three letters for the currency' do
    (@json['rates']).each do |i|
      expect(i[0].length).to eq 3
    end
  end

  it 'should only have 31 countries' do
    count = 0
    (@json['rates']).each do |i|
      count += 1
    end
    expect(count).to eq 31
  end

end
