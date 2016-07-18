require "httparty"
require "pry"


class CurrentDay

	def CurrentDay.cityName(name)
		return name
	end

	def CurrentDay.currentWeatherStatus(status)
		return status
	end

	def CurrentDay.currentWeatherTemp(temperature)
		wholeTemp = temperature.to_i
		return wholeTemp
	end

	def CurrentDay.currentDay(day)
		return day
	end

end

binding.pry
puts "#{omaha_weather_info["currently"]["summary"]}." # puts the overall weather status currently...
puts "#{omaha_weather_info["currently"]["temperature"]}." #puts current temperature
puts "#{omaha_weather_info["daily"]["summary"]}." # puts the overall weather status for the day...
puts "#{omaha_weather_info["daily"]["data"][0]["sunriseTime"]}." #puts the current day's sunrise time
puts "#{omaha_weather_info["daily"]["data"][0]["sunsetTime"]}." #puts the current day's sunset time
puts "#{omaha_weather_info["daily"]["data"][1]["temperatureMin"]}." #puts the min temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][1]["temperatureMax"]}." #puts the max temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][2]["temperatureMin"]}." #puts the min temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][2]["temperatureMax"]}." #puts the max temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][3]["temperatureMin"]}." #puts the min temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][3]["temperatureMax"]}." #puts the max temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][4]["temperatureMin"]}." #puts the min temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][4]["temperatureMax"]}." #puts the max temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][5]["temperatureMin"]}." #puts the min temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][5]["temperatureMax"]}." #puts the max temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][6]["temperatureMin"]}." #puts the min temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][6]["temperatureMax"]}." #puts the max temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][7]["temperatureMin"]}." #puts the min temp of current day +1
puts "#{omaha_weather_info["daily"]["data"][7]["temperatureMax"]}." #puts the max temp of current day +1
puts "#{omaha_weather_info["hourly"]["data"][0]["temperature"]}." #puts current hour temperature
puts "#{omaha_weather_info["hourly"]["data"][1]["temperature"]}." #puts current hour temperature + 1
puts "#{omaha_weather_info["hourly"]["data"][2]["temperature"]}." #puts current hour temperature + 2
puts "#{omaha_weather_info["hourly"]["data"][3]["temperature"]}." #puts current hour temperature + 3
puts "#{omaha_weather_info["hourly"]["data"][4]["temperature"]}." #puts current hour temperature + 4
puts "#{omaha_weather_info["hourly"]["data"][5]["temperature"]}." #puts current hour temperature + 5
puts "#{omaha_weather_info["hourly"]["data"][6]["temperature"]}." #puts current hour temperature + 6
puts "#{omaha_weather_info["hourly"]["data"][7]["temperature"]}." #puts current hour temperature + 7
puts "#{omaha_weather_info["hourly"]["data"][8]["temperature"]}." #puts current hour temperature + 8
puts "#{omaha_weather_info["hourly"]["data"][9]["temperature"]}." #puts current hour temperature + 9
puts "#{omaha_weather_info["hourly"]["data"][10]["temperature"]}." #puts current hour temperature + 10
puts "#{omaha_weather_info["hourly"]["data"][11]["temperature"]}." #puts current hour temperature + 11
puts "#{omaha_weather_info["hourly"]["data"][12]["temperature"]}." #puts current hour temperature + 12
puts "#{omaha_weather_info["hourly"]["data"][13]["temperature"]}." #puts current hour temperature + 13
puts "#{omaha_weather_info["hourly"]["data"][14]["temperature"]}." #puts current hour temperature + 14
puts "#{omaha_weather_info["hourly"]["data"][15]["temperature"]}." #puts current hour temperature + 15
puts "#{omaha_weather_info["hourly"]["data"][16]["temperature"]}." #puts current hour temperature + 16
puts "#{omaha_weather_info["hourly"]["data"][17]["temperature"]}." #puts current hour temperature + 17
puts "#{omaha_weather_info["hourly"]["data"][18]["temperature"]}." #puts current hour temperature + 18
puts "#{omaha_weather_info["hourly"]["data"][19]["temperature"]}." #puts current hour temperature + 19
puts "#{omaha_weather_info["hourly"]["data"][20]["temperature"]}." #puts current hour temperature + 20
puts "#{omaha_weather_info["hourly"]["data"][21]["temperature"]}." #puts current hour temperature + 21
puts "#{omaha_weather_info["hourly"]["data"][22]["temperature"]}." #puts current hour temperature + 22
puts "#{omaha_weather_info["hourly"]["data"][23]["temperature"]}." #puts current hour temperature + 23
puts "#{omaha_weather_info["hourly"]["data"][24]["temperature"]}." #puts current hour temperature + 24