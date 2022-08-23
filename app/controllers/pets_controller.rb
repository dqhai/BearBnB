class PetsController < ApplicationController
  def index
    @pets = Pet.all
  end

  def new
    @pet = Pet.new
  end

  def show
    @pet = Pet.find(params[:id])
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.save
  end

  def delete
    @pet = Pet.find(params[:id])
    @pet.destroy
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :user_id, :address)
  end
end
