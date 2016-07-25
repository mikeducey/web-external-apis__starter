require "httparty"
require "pry"
require "date"


class Day

	# This function returns the API Key, with the lat and long specified for that city

	def Day.getApiInfo(lat, long)
		require_relative "secret.rb"
		correctAPIKey = HTTParty.get("https://api.forecast.io/forecast/#{API_KEY}/#{lat},#{long}")
		return correctAPIKey
	end

	def Day.hourly_temperatures(weather_information)
		temps = []
		weather_information["hourly"]["data"].each do |hour|
			temps << hour["temperature"].to_i
		end
		return temps
	end

	def Day.listByHour(weather_information)
		hour = []
		weather_information["hourly"]["data"].each do |listhour|
			hour << (Time.at(listhour["time"])to_datetime).strftime("%H"  "%p")

		end
		return hour
	end


	def Day.currentWeatherStatus(weather_information)
		w_info = weather_information["currently"]["summary"]
		return w_info
	end

	def Day.daily_summary(weather_information)
		h_summary = weather_information["daily"]["summary"]
		return h_summary
	end

	def Day.sunrise_time(weather_information)
		sunriseTime = Time.at(weather_information["daily"]["data"][0]["sunriseTime"]).to_datetime
		return sunriseTime.strftime("%-H:%M"  "%p")
	end

	def Day.sunset_time(weather_information)
		sunsetTime = Time.at(weather_information["daily"]["data"][0]["sunsetTime"]).to_datetime
		return sunsetTime.strftime("%-H:%M"  "%p")
	end

	def Day.precip_probability(weather_information)
		precipitationProbability = (weather_information["daily"]["data"][0]["precipProbability"])
		return (precipitationProbability * 100).to_i
	end

	def Day.total_precip(weather_information)
		totalPrecipitation = (weather_information["daily"]["data"][0]["precipIntensity"])
		return totalPrecipitation
	end

	def Day.pressure(weather_information)
		pressure = (weather_information["daily"]["data"][0]["pressure"])
		return pressure * 0.0295301
	end

	def Day.visibility(weather_information)
		visibility = weather_information["daily"]["data"][0]["visibility"]
		return visibility
	end

	def Day.humidity(weather_information)
		humidity = weather_information["daily"]["data"][0]["humidity"]
		return humidity * 100
	end

	def Day.wind(weather_information)
		wind = weather_information["daily"]["data"][0]["windSpeed"]
		return wind
	end

	def Day.currentWindChill(weather_information)
		windChill = weather_information["currently"]["apparentTemperature"]
		return windChill
	end

	def Day.listOfDays(weather_information)
		listOfDays = []
		weather_information["daily"]["data"].each do |day|
			listOfDays << Time.at(day["time"]).to_datetime.strftime("%A")
		end
		return listOfDays
	end

	def Day.dailyMinTemp(weather_information)
		dayMinTemp = []
		weather_information["daily"]["data"].each do |dayMinimumTemp|
			dayMinTemp << dayMinimumTemp["temperatureMin"].to_i
		end
		return dayMinTemp
	end

	def Day.dailyMaxTemp(weather_information)
		dayMaxTemp = []
		weather_information["daily"]["data"].each do |dayMaximumTemp|
			dayMaxTemp << dayMaximumTemp["temperatureMax"].to_i
		end
		return dayMaxTemp
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

