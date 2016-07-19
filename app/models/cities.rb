require "httparty"
require "pry"
#NEED TO MAKE THE SECRET FILE TO GITIGNORE!!!!!

class Day

	def Day.cityName(name)
		return name
	end

	def Day.currentWeatherStatus(status)
		return status
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

