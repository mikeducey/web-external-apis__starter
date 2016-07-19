MyApp.get "/" do
  erb :"home"
end

MyApp.get "/omaha" do

	time = Time.new
	omaha_weather_info = HTTParty.get('https://api.forecast.io/forecast/d30a006d3cf8397481873891ce49388a/41.2607,-95.9406')
	@city = Day.cityName("Omaha")
	@status = Day.currentWeatherStatus("#{omaha_weather_info["currently"]["summary"]}.")
	@currentTemp = Day.currentWeatherTemp("#{omaha_weather_info["currently"]["temperature"]}.")
	@currentDay = Day.currentDay(time.strftime("%A"))
	@currentDayLow = Day.minTemp("#{omaha_weather_info["daily"]["data"][0]["temperatureMin"]}.")
	@currentDayHigh = Day.maxTemp("#{omaha_weather_info["daily"]["data"][0]["temperatureMax"]}.")
	@currentHour = Day.currentHour(time.strftime("%I"))
	@currentDayLowPlusOne = Day.minTemp("#{omaha_weather_info["daily"]["data"][1]["temperatureMin"]}.")
	@currentDayHighPlusOne = Day.maxTemp("#{omaha_weather_info["daily"]["data"][1]["temperatureMax"]}.")
	@currentDayLowPlusTwo = Day.minTemp("#{omaha_weather_info["daily"]["data"][2]["temperatureMin"]}.")
	@currentDayHighPlusTwo = Day.maxTemp("#{omaha_weather_info["daily"]["data"][2]["temperatureMax"]}.")
	@currentDayLowPlusThree = Day.minTemp("#{omaha_weather_info["daily"]["data"][3]["temperatureMin"]}.")
	@currentDayHighPlusThree = Day.maxTemp("#{omaha_weather_info["daily"]["data"][3]["temperatureMax"]}.")
	@currentDayLowPlusFour = Day.minTemp("#{omaha_weather_info["daily"]["data"][4]["temperatureMin"]}.")
	@currentDayHighPlusFour = Day.maxTemp("#{omaha_weather_info["daily"]["data"][4]["temperatureMax"]}.")
	@currentDayLowPlusFive = Day.minTemp("#{omaha_weather_info["daily"]["data"][5]["temperatureMin"]}.")
	@currentDayHighPlusFive = Day.maxTemp("#{omaha_weather_info["daily"]["data"][5]["temperatureMax"]}.")
	@currentDayLowPlusSix = Day.minTemp("#{omaha_weather_info["daily"]["data"][6]["temperatureMin"]}.")
	@currentDayHighPlusSix = Day.maxTemp("#{omaha_weather_info["daily"]["data"][6]["temperatureMax"]}.")
	@currentDayLowPlusSeven = Day.minTemp("#{omaha_weather_info["daily"]["data"][7]["temperatureMin"]}.")
	@currentDayHighPlusSeven = Day.maxTemp("#{omaha_weather_info["daily"]["data"][7]["temperatureMax"]}.")

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