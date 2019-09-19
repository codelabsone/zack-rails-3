class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.with_attached_images
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

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to vehicles_url
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:year, :make, :model, :price, :new, :mileage, :transmission, :engine, :drivetrain, :vin, :fuel_type, :body_style, :ext_color, :int_color, :mpg, images: [])
  end

end
