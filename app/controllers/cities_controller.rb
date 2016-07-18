MyApp.get "/" do
  erb :"home"
end

MyApp.get "/omaha" do

	time = Time.new
	omaha_weather_info = HTTParty.get('https://api.forecast.io/forecast/d30a006d3cf8397481873891ce49388a/41.2607,-95.9406')
	@city = CurrentDay.cityName("Omaha")
	@status = CurrentDay.currentWeatherStatus("#{omaha_weather_info["currently"]["summary"]}.")
	@currentTemp = CurrentDay.currentWeatherTemp("#{omaha_weather_info["currently"]["temperature"]}.")
	@currentDay = CurrentDay.currentDay(time.strftime("%A"))


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