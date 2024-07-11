class PlantsController < ApplicationController

  def index
    @plants = Plant.all
    render :index
  end

  def create
    @plant = Plant.create(
      name: params[:name],
      species: params[:species],
      plant_image: params[:plant_image],
      sun_amount: params[:sun_amount],
      days_water: params[:days_water],
      description: params[:description],
    )
    render :show
  end

  def show
    @plant = Plant.find_by(id: params[:id])
    render :show
  end
end
