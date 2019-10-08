class VehiclesController < ApplicationController

  before_action :require_admin, only: [:new, :create, :destroy]

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
    if params[:vehicle][:images].nil? == false
      @vehicle.images.attach(params[:vehicle][:images])
    end
    if @vehicle.update(vehicle_params)
      redirect_to @vehicle
    else
      render :edit
    end
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.images.attach(params[:vehicle][:images])
    if @vehicle.save
      redirect_to @vehicle
    else
      render :new
    end
  end

  def destroy
    @vehicle = Vehicle.find(params[:id])
    @vehicle.destroy
    redirect_to vehicles_url
  end

  def delete_image_attachment
    @image = ActiveStorage::Attachment.find(params[:format])
    @image.purge
    redirect_to edit_vehicle_path
  end

  def search
    @vehicles = Vehicle.search_for(params[:query])
    render :index
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:year, :make, :model, :price, :new, :mileage, :transmission, :engine, :drivetrain, :vin, :fuel_type, :body_style, :ext_color, :int_color, :mpg)
  end

end
