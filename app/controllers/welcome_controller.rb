class WelcomeController < ApplicationController

	def index
		@sm = "Santa+Monica,CA"
		@address = "1617+Broadway"
		@zip = "90404"
		@url = "https://maps.googleapis.com/maps/api/staticmap?center=#{@address}+#{@zip}&izoom=16&size=400x400&maptype=roadmap\
&markers=size:mid%7Ccolor:red%7C#{@address}+#{@zip}"
		@weather_url = "http://api.openweathermap.org/data/2.5/weather?q=#{@sm}"
		@weather = HTTParty.get(@weather_url)
	end

end
