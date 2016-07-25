MyApp.get "/" do
  erb :"home"
end

# time.strftime("%I""%p"
# 	time and am or pm

MyApp.get "/omaha" do

	time = Time.new
	
	@api = Day.getApiInfo("41.2607","-95.9406")
	@city = "Omaha"
	@status = Day.currentWeatherStatus(@api)

	# @hourSequence = 
	@hourly_temps = Day.hourly_temperatures(@api) # , time.strftime("%I""%p")
	@hour_by_hour = Day.listByHour(@api)
	@hourly_summary = Day.daily_summary(@api)
	@sunriseTime = Day.sunrise_time(@api)
	@sunsetTime = Day.sunset_time(@api)
	@precipitationProbability = Day.precip_probability(@api)
	@totalPrecipitation = Day.total_precip(@api)
	@wind = Day.wind(@api)
	@humidity = Day.humidity(@api)
	@pressure = Day.pressure(@api)
	@visibility = Day.visibility(@api)
	@currentWindChill = Day.currentWindChill(@api)

	@listOfDays = Day.listOfDays(@api)


	@currentTemp = Day.currentWeatherTemp(@api["currently"]["temperature"])
	@currentDay = Day.currentDay(time.strftime("%A"))
	@dailyMin = Day.dailyMinTemp(@api)
	@dailyMax = Day.dailyMaxTemp(@api)
	@currentDayLow = Day.minTemp(@api["daily"]["data"][0]["temperatureMin"])
	@currentDayHigh = Day.maxTemp(@api["daily"]["data"][0]["temperatureMax"])
	# @currentHour = Day.currentHour(time.strftime("%I"))

	
	@currentDayLowPlusOne = Day.minTemp(@api["daily"]["data"][1]["temperatureMin"])
	@currentDayHighPlusOne = Day.maxTemp(@api["daily"]["data"][1]["temperatureMax"])
	@currentDayLowPlusTwo = Day.minTemp(@api["daily"]["data"][2]["temperatureMin"])
	@currentDayHighPlusTwo = Day.maxTemp(@api["daily"]["data"][2]["temperatureMax"])
	@currentDayLowPlusThree = Day.minTemp(@api["daily"]["data"][3]["temperatureMin"])
	@currentDayHighPlusThree = Day.maxTemp(@api["daily"]["data"][3]["temperatureMax"])
	@currentDayLowPlusFour = Day.minTemp(@api["daily"]["data"][4]["temperatureMin"])
	@currentDayHighPlusFour = Day.maxTemp(@api["daily"]["data"][4]["temperatureMax"])
	@currentDayLowPlusFive = Day.minTemp(@api["daily"]["data"][5]["temperatureMin"])
	@currentDayHighPlusFive = Day.maxTemp(@api["daily"]["data"][5]["temperatureMax"])
	@currentDayLowPlusSix = Day.minTemp(@api["daily"]["data"][6]["temperatureMin"])
	@currentDayHighPlusSix = Day.maxTemp(@api["daily"]["data"][6]["temperatureMax"])
	@currentDayLowPlusSeven = Day.minTemp(@api["daily"]["data"][7]["temperatureMin"])
	@currentDayHighPlusSeven = Day.maxTemp(@api["daily"]["data"][7]["temperatureMax"])

	erb :"cities"
end


MyApp.get "/sanfran" do
	erb :"cities"

end

MyApp.get "/mumbai" do
	erb :"cities"

end

MyApp.get "/example" do
  erb :"weather"
end