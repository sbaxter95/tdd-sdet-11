require 'spec_helper'

describe 'JSON example tests' do

  before(:all) do
    @json = JSON.parse(File.read('json_example.json'))
  end

  it 'should have the key colour for each data object' do
    expect(@json['colors'][0]).to have_key('color')
    expect(@json['colors'][1]).to have_key('color')
    expect(@json['colors'][2]).to have_key('color')
    expect(@json['colors'][3]).to have_key('color')
  end

  it "the colour red should have the hex value of '#FF0' " do
    @json['colors'].each do |item|
      if item['color'] == 'red'
        expect(item['code']['hex']).to eq('#FF0')
      end
    end
    # red = (@json['colors'][2]['code']['hex'])

  end

  it "the colour green should have the RGBA value of '0,255,0,1' " do
    @json['colors'].each do |item|
      if item['color'] == 'green'
        expect(item['code']['rgba']).to eq([0,255,0,1])
      end
    end
  end

end

