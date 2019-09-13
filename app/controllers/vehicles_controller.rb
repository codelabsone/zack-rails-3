class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def new
    @vehicle = Vehicle.new
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:year, :make, :model, :price, :new, :mileage, :transmission, :engine, :drivetrain, :vin, :fuel_type, :body_style, :ext_color, :int_color, :mpg)
  end
  
end
