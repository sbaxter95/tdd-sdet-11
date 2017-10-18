require 'spec_helper'

describe 'JSON example tests' do

  before(:all) do
    @json = JSON.parse(File.read('json_example.json'))
  end

  it 'should have the key colour for each data object' do
    p @json.each do |item|
      expect(item).to include(:color)
    end
  end

  it "the colour red should have the hex value of '#FF0' " do
    red = (@json['colors'][2]['code']['hex'])
    expect(red).to eq('#FF0')
  end

  it "the colour green should have the RGBA value of '0,255,0,1' " do
    green = (@json['colors'][5]['code']['rgba'])
    expect(green).to eq([0,255,0,1])
  end

end
