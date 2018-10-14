require "httparty"
require "json"

class LocalWeather
    include HTTParty # all methods from httparty are now available
    attr_accessor :local_weather

    # base_uri "api.openweathermap.org/data/2.5/weather?q="

    def get_local_weather
        @local_weather = JSON.parse(self.class.get("http://samples.openweathermap.org/data/2.5/forecast?q=London,us&appid=b6907d289e10d714a6e88b30761fae22").body)
        # @coordinates = @local_weather["coord"]
    end


    def check_longitude_is_float
        if @coordinates["lon"].class == Float
            return true
        end
        return false
    end
end

check = LocalWeather.new
check.get_local_weather
puts check
