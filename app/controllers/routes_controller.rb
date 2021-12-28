class RoutesController < ApplicationController
  include HTTParty
  before_action :set_route, only: [:show, :update, :destroy]


  def index
    @routes = Route.all

    render json: @routes
  end


  def show
    render json: @route
  end


  def update
    if @route.update(route_params)
      render json: @route
    else
      render json: @route.errors, status: :unprocessable_entity
    end
  end


  def destroy
    @route.destroy
  end

  def create

    url1 = "http://api.openweathermap.org/geo/1.0/direct?q=#{params["destinations"]["origin"]}&limit=1&appid=#{Rails.application.credentials.weather[:secret_key]}"

    url2 = "http://api.openweathermap.org/geo/1.0/direct?q=#{params["destinations"]["dest"]}&limit=1&appid=#{Rails.application.credentials.weather[:secret_key]}"

    response1 = HTTParty.get(url1)
    response2 = HTTParty.get(url2)
    lat2 = response2[0]["lat"]
    long2 = response2[0]["lon"]
    lat1 = response1[0]["lat"]
    long1 = response1[0]["lon"]
    dt = Time.now.to_i

    route_params = {dt: dt, lat1: lat1, long1: long1, lat2: lat2, long2: long2}

    @route = Route.new(route_params)


    if @route.save
      directionList = @route.directions
      render json: directionList
    else
      render json: "didn't process"
    end
  end

  private

  def route_params
    params.require(:routes).permit()
  end
end
