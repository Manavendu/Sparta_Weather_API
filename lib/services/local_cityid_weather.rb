require "httparty"
require "json"

class LocalCityIdWeather
    include HTTParty # all methods from httparty are now available
    attr_accessor :local_cityid_weather

    base_uri "http://api.openweathermap.org/data/2.5/weather?id="

    def get_local_cityid_weather(cityid)
        @local_cityid_weather = JSON.parse(self.class.get("#{cityid}&appid=c66a1942ff59cce215d197a7b7be02e8").body)
        @coordinates = @local_cityid_weather["coord"]
        @weather = @local_cityid_weather["weather"]
        @main = @local_cityid_weather["main"]
    end
    
    def check_coordinates_present
        if @coordinates
            return true
        end
        return false
    end

    def check_longitude_is_float
        if @coordinates["lon"].class == Float
            return true
        end
    end

    def check_latitude_is_float
        if @coordinates["lat"].class == Float
        return true
        end
    end

    def check_weather_present
    if @weather
        return true
    end
    return false
    end

    def check_weather_id_is_integer
        if @weather["id"].class == Integer
        return true
    end
    return false
    end

    def check_weather_main_is_string
    if @weather["main"].class == String 
        return true
    end
        return false
    end
end

# test = LocalWeather.new
# test.get_local_cityid_weather(2172797)
# puts test.check_longitude_is_float
