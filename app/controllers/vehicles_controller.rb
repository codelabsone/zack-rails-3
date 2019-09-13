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
end
