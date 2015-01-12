class WelcomeController < ApplicationController

	def index

		@address = "Santa+Monica,CA"
		@url = "https://maps.googleapis.com/maps/api/staticmap?center=#{@address}&izoom=14&size=400x400"
		@weather_url = "http://api.openweathermap.org/data/2.5/weather?q=#{@address}"
		@weather = HTTParty.get(@weather_url)
	end

end
