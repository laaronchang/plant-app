class PlantsController < ApplicationController

  # def index
  #   @plants = Plant.all
  #   render :index
  # end

  def index
    p "hello"
    p current_user
    # @plants = Plant.where(user_id: current_user.id)
    @plants = Plant.all
    render template: "plants/index"
  end

  def create
    @plant = Plant.create(
      name: params[:name],
      species: params[:species],
      plant_image: params[:plant_image],
      sun_amount: params[:sun_amount],
      days_water: params[:days_water],
      description: params[:description],
      user_id: current_user.id
    )
    # render :show
    # below new
    if @plant.save
      render template: "plants/show"
    else
      render json: {errors: @plant.errors.full_messages}
    end
  end

  def show
    @plant = Plant.find_by(id: params[:id])
    render :show
  end

  def update
    @plant = PhPlantoto.find_by(id: params[:id])
    @plant.update(
      name: params[:name] || @photo.name,
      species: params[:species] || @plant.species,
      plant_image: params[:plant_image] || @plant.plant_image,
      sun_amount: params[:sun_amount] || @plant.sun_amount,
      days_water: params[:days_water] || @plant.days_water,
      description: params[:description] || @plant.description,
    )
    render :show
  end

  def destroy
    @plant = Plant.find_by(id: params[:id])
    @plant.destroy
    render json: { message: "Plant destroyed successfully" }
  end
end
