class RoutesController < ApplicationController
  before_action :set_route, only: [:show, :update, :destroy]


  def index
    @routes = Route.all

    render json: @routes
  end


  def show
    render json: @route
  end


  def create
    @route = Route.new(route_params)

    if @weather.save
      render json: @route, status: :created, location: @route
    else
      render json: @route.errors, status: :unprocessable_entity
    end
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
end
