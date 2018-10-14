require 'spec_helper'

describe WeatherAPI do
  
  context 'requesting information by City Name ' do

        before(:all) do
            @weatherapi = WeatherAPI.new.local_weather
            @weatherapi.get_local_weather('london,uk')
        end

        it 'should check that coordinates were returnd' do
          expect(@weatherapi.check_coordinates_present).to eq(true)
        end

        it 'should check that longitude is float' do
          expect(@weatherapi.check_longitude_is_float).to eq(true)
        end

        it 'should check that latitude is float' do
          expect(@weatherapi.check_latitude_is_float).to eq(true)
        end

    end

    context 'requesting information for city by the city id ' do

      before(:all) do
          @weatherapi = WeatherAPI.new.local_cityid_weather
          @weatherapi.get_local_cityid_weather(2172797)
      end

      it 'should check that coordinates were returnd' do
        expect(@weatherapi.check_coordinates_present).to eq(true)
      end

      it 'should check that longitude is float' do
        expect(@weatherapi.check_longitude_is_float).to eq(true)
      end

      it 'should check that latitude is float' do
        expect(@weatherapi.check_latitude_is_float).to eq(true)
      end

  end

  context 'requesting information by zip code ' do

    before(:all) do
        @weatherapi = WeatherAPI.new.local_zipcode_weather
        @weatherapi.get_zipcode_weather(94040)
    end

    it 'should check that coordinates were returnd' do
      expect(@weatherapi.check_coordinates_present).to eq(true)
    end

    it 'should check that longitude is float' do
      expect(@weatherapi.check_longitude_is_float).to eq(true)
    end

    it 'should check that latitude is float' do
      expect(@weatherapi.check_latitude_is_float).to eq(true)
    end

end


end
