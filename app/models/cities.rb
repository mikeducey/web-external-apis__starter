require "httparty"
require "pry"


class Day

	# This function returns the API Key, with the lat and long specified for that city

	def Day.getAPIKey(lat, long)
		require_relative "secret.rb"
		return correctAPIKey = HTTParty.get('https://api.forecast.io/forecast/#{API_KEY}/#{lat},#{long}')
	end

	def Day.hourly_temperatures(weather_information)
		temps = []
		weather_information["hourly"]["data"].each do |hour|
			temps << hour["temperature"]
		end
		return temps
	end

	def Day.AMOrPM(timeofday)
		return timeofday
	end

	def Day.cityName(name)
		return name
	end

	def Day.currentWeatherStatus(weather_information)
		weather_information["currently"]["summary"]
	end

	def Day.currentWeatherTemp(temperature)
		wholeTemp = temperature.to_i
		return wholeTemp
	end

	def Day.currentDay(day)
		return day
	end

	def Day.minTemp(temperature)
		minTemp = temperature.to_i
		return minTemp
	end

	def Day.maxTemp(temperature)
		maxTemp = temperature.to_i
		return maxTemp
	end

	def Day.currentHour(hour)
		return hour
	end
end

