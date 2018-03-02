class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    render json: @animals
    # render 'index'
  end

  def show
    @animal = Animal.find(params[:id])
    render json: @animal
    # render 'show'
  end

  # /animals POST
  def create
    @animal = Animal.new(animal_params)
    if @animal.save
      render json: @animal
    else
      # Animal couldnt be saved
      # missing arguments
      # validation for existence
      render json: { error: "You did it wrong"}
    end
  end

  # /animals/:id PATCH
  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)
    render json: @animal
  end

  # no new
  # no edit thats JS job


  # /animals/:id DELETE
  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy
    render json: { message: "Congrats youve won"}
  end


  private
  def animal_params
    params.require(:animal).permit(:name, :url, :fav)
  end



end
