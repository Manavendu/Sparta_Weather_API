require_relative "services/local_cityname_weather.rb"
require_relative "services/local_cityid_weather.rb"
require_relative "services/city_zip.rb"


class WeatherAPI

    def local_weather
        LocalWeather.new
    end

    def local_cityid_weather
        LocalCityIdWeather.new
    end

    def local_zipcode_weather

        ZipCode.new

    end
end
