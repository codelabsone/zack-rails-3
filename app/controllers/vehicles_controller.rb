class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])
    @vehicle.update(vehicle_params)
    redirect_to @vehicle
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.save
    redirect_to @vehicle
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:year, :make, :model, :price, :new, :mileage, :transmission, :engine, :drivetrain, :vin, :fuel_type, :body_style, :ext_color, :int_color, :mpg, :image)
  end

end
