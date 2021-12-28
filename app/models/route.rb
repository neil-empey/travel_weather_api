class Route < ApplicationRecord
  include HTTParty
  validates :dt, :lat1, :long1, :lat2, :long2, presence: true

    def directions

    place1 = "#{self.lat1}, #{self.long1}"
    place2 = "#{self.lat2}, #{self.long2}"

    url = "http://www.mapquestapi.com/directions/v2/route?key=#{Rails.application.credentials.route[:consumer_key]}&from=#{place1}&to=#{place2}"

    response = HTTParty.get(url)

    array = response.parsed_response["route"]["legs"][0]["maneuvers"]
    puts array

    setOfDirections = array.map {|x| x["narrative"]}

    setOfDirections

    # setOfCoordinates = array.map.with_index {|x, i| x["startPoint"]}
    #
    # weather = setOfCoordinates.map {|x| HTTParty.get("https://api.openweathermap.org/data/2.5/onecall?lat=#{x["lat"]}&lon=#{x["lng"]}&units=imperial&exclude=minutely,hourly,alerts&appid=#{Rails.application.credentials.weather[:secret_key]}") }

    #puts weather

    end

end
