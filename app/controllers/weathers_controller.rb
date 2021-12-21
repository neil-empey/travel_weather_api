class WeathersController < ApplicationController
  before_action :set_weather, only: [:show, :update, :destroy]


  def index
    @weathers = Weather.all

    render json: @weathers
  end


  def show
    render json: @weather
  end


  def create(lat1, lon1, dt1, lat2, lon2, dt2)
    url = https://api.openweathermap.org/data/2.5/forecast?lat={lat}&lon={lon}&appid={Rails.application.credentials.weather.secret_key}





    response = HTTParty.post(url, {headers: {"Content-Type" => "application/json"}, body}

    puts response

    #@weather = Weather.new(weather_params)

  #  if @weather.save
    #  render json: @weather, status: :created, location: @weather
  #  else
    #  render json: @weather.errors, status: :unprocessable_entity
  #  end
  end


  def update
    if @weather.update(weather_params)
      render json: @weather
    else
      render json: @weather.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @weather.destroy
  end

  private

    def set_weather
      @weather = Weather.find(params[:id])
    end


    def weather_params
      params.require(:weather).permit(:dt, :temp1, :wind_speed1, :wind_deg1, :precip_intensity1, :dew_point1, :road_state1, :road_temp1, :alert1, :event1, :event_level1, :temp2, :wind_speed2, :wind_deg2, :precip_intensity2, :dew_point2, :road_state2, :road_temp2, :alert2, :event2, :event_level2)
    end
end
