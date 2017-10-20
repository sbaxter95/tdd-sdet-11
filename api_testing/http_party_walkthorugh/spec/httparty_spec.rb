require 'spec_helper'

describe 'testing api' do

  before(:all) do
      @json = JSON.parse(HTTParty.get('http://api.postcodes.io/postcodes/ky157uu').body)
    end

    it 'should check if quality is an integer' do
      expect(@json['result']['quality']).to be_kind_of(Integer)
    end

    it 'should ensure that the quality is not below 1' do
      expect(@json['result']['quality']).to be >= 1
    end

    it 'should ensure that the quality does not equal 7' do
      expect(@json['result']['quality']).not_to be 7
    end

    it 'should ensure that the quality is not above 9' do
      expect(@json['result']['quality']).to be <= 9
    end

    it 'should ensure that the longitude is a float' do
      expect(@json['result']['longitude']).to be_kind_of(Float)
    end

    it 'should ensure that the latitude is a float' do
      expect(@json['result']['latitude']).to be_kind_of(Float)
    end

    it 'should ensure the postcode is a string' do
      expect(@json['result']['postcode']).to be_kind_of(String)
    end

    it 'should ensure that the postcode has a space' do
      expect(@json['result']['postcode']).to include(' ')
    end

    it 'should ensure that the postcode is a maximum of 8 characters' do
      expect(@json['result']['postcode'].length).to be <= 8
    end

    it 'should ensure that eastings is either an integer or null' do
      if @json['result']['eastings'].class == Integer
        expect(@json['result']['eastings']).to be_kind_of(Integer)
      elsif @json['result']['eastings'].class == NIL
        expect(@json['result']['eastings']).to be_kind_of(NIL)
      end
    end

    it 'should ensure that northings is either an integer or null' do
      if @json['result']['northings'].class == Integer
        expect(@json['result']['northings']).to be_kind_of(Integer)
      elsif @json['result']['northings'].class == NIL
        expect(@json['result']['northings']).to be_kind_of(NIL)
      end
    end

    it 'should ensure that country is a string' do
      expect(@json['result']['country']).to be_kind_of(String)
    end

    it 'should ensure that nhs_ha is either a string or null' do
      if @json['result']['nhs_ha'].class == String
        expect(@json['result']['nhs_ha']).to be_kind_of(String)
      elsif @json['result']['nhs_ha'].class == NIL
        expect(@json['result']['nhs_ha']).to be_kind_of(NIL)
      end
    end

    it 'should ensure that admin_county is either a string or null' do
      if @json['result']['admin_county'].class == String
        expect(@json['result']['admin_county']).to be_kind_of(String)
      elsif @json['result']['admin_county'].class == NIL
        expect(@json['result']['admin_county']).to be_kind_of(NIL)
      end
    end

    it 'should ensure that admin_ward is either a string or null' do
      if @json['result']['admin_ward'].class == String
        expect(@json['result']['admin_ward']).to be_kind_of(String)
      elsif @json['result']['admin_ward'].class == NIL
        expect(@json['result']['admin_ward']).to be_kind_of(NIL)
      end
    end

    it 'should ensure that admin_district is either a string or null' do
      if @json['result']['admin_district'].class == String
        expect(@json['result']['admin_district']).to be_kind_of(String)
      elsif @json['result']['admin_district'].class == NIL
        expect(@json['result']['admin_district']).to be_kind_of(NIL)
      end
    end

    it 'should ensure that parliamentary_constituency is either a string or null' do
      if @json['result']['parliamentary_constituency'].class == String
        expect(@json['result']['parliamentary_constituency']).to be_kind_of(String)
      elsif @json['result']['parliamentary_constituency'].class == NIL
        expect(@json['result']['parliamentary_constituency']).to be_kind_of(NIL)
      end
    end

    it 'should ensure that european_electoral_region is either a string or null' do
      if @json['result']['european_electoral_region '].class == String
        expect(@json['result']['european_electoral_region ']).to be_kind_of(String)
      elsif @json['result']['european_electoral_region '].class == NIL
        expect(@json['result']['european_electoral_region ']).to be_kind_of(NIL)
      end
    end

end
