class Route < ApplicationRecord
  include HTTParty
  validates :dt, :lat1, :long1, :lat2, :long2, presence: true

    def directions

    place1 = "#{self.lat1}, #{self.long1}"
    place2 = "#{self.lat2}, #{self.long2}"

    puts place1
    puts place2

    url = "http://www.mapquestapi.com/directions/v2/route?key=#{Rails.application.credentials.route[:consumer_key]}&from=#{place1}&to=#{place2}"

    response = HTTParty.get(url)

    puts response

    end

end
