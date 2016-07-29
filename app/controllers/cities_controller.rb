MyApp.get "/" do
  erb :"home"
end

MyApp.get "/omaha" do

	time = Time.new
	
	@api = Day.getApiInfo("41.2607","-95.9406")
	@city = "Omaha"
	@status = Day.currentWeatherStatus(@api) 
	@hourly_temps = Day.hourly_temperatures(@api)
	@hour_by_hour = Day.listByHour(@api)
	@hourly_summary = Day.daily_summary(@api)
	@sunriseTime = Day.sunrise_time(@api)
	@sunsetTime = Day.sunset_time(@api)
	@precipitationProbability = Day.precip_probability(@api)
	@totalPrecipitation = Day.total_precip(@api)
	@wind = Day.wind(@api)
	@windDirection = Day.windDirection(@api)
	@humidity = Day.humidity(@api)
	@pressure = Day.pressure(@api)
	@visibility = Day.visibility(@api)
	@currentWindChill = Day.currentWindChill(@api)
	@listOfDays = Day.listOfDays(@api)
	@currentTemp = Day.currentTemp(@api)
	@dailyMin = Day.dailyMinTemp(@api)
	@dailyMax = Day.dailyMaxTemp(@api)

	erb :"cities"
end


MyApp.get "/sanfran" do

	time = Time.new
	
	@api = Day.getApiInfo("37.7749","-122.4194")
	@city = "San Francisco"
	@status = Day.currentWeatherStatus(@api) 
	@hourly_temps = Day.hourly_temperatures(@api)
	@hour_by_hour = Day.listByHour(@api)
	@hourly_summary = Day.daily_summary(@api)
	@sunriseTime = Day.sunrise_time(@api)
	@sunsetTime = Day.sunset_time(@api)
	@precipitationProbability = Day.precip_probability(@api)
	@totalPrecipitation = Day.total_precip(@api)
	@wind = Day.wind(@api)
	@windDirection = Day.windDirection(@api)
	@humidity = Day.humidity(@api)
	@pressure = Day.pressure(@api)
	@visibility = Day.visibility(@api)
	@currentWindChill = Day.currentWindChill(@api)
	@listOfDays = Day.listOfDays(@api)
	@currentTemp = Day.currentTemp(@api)
	@dailyMin = Day.dailyMinTemp(@api)
	@dailyMax = Day.dailyMaxTemp(@api)

	erb :"cities"
end

MyApp.get "/mumbai" do

	time = Time.new
	
	@api = Day.getApiInfo("19.0760","72.8777")
	@city = "Mumbai"
	@status = Day.currentWeatherStatus(@api) 
	@hourly_temps = Day.hourly_temperatures(@api)
	@hour_by_hour = Day.listByHour(@api)
	@hourly_summary = Day.daily_summary(@api)
	@sunriseTime = Day.sunrise_time(@api)
	@sunsetTime = Day.sunset_time(@api)
	@precipitationProbability = Day.precip_probability(@api)
	@totalPrecipitation = Day.total_precip(@api)
	@wind = Day.wind(@api)
	@windDirection = Day.windDirection(@api)
	@humidity = Day.humidity(@api)
	@pressure = Day.pressure(@api)
	@visibility = Day.visibility(@api)
	@currentWindChill = Day.currentWindChill(@api)
	@listOfDays = Day.listOfDays(@api)
	@currentTemp = Day.currentTemp(@api)
	@dailyMin = Day.dailyMinTemp(@api)
	@dailyMax = Day.dailyMaxTemp(@api)

	erb :"cities"
end

MyApp.get "/example" do
  erb :"weather"
end