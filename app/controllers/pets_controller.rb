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

  def edit
    @pet = Pet.find(params[:id])
  end

  def update
    @pet = Pet.find(params[:id])
    @pet.update(pet_params)
    redirect_to pet_path(@pet)
  end

  private

  def pet_params
    params.require(:pet).permit(:name, :user_id, :address)
  end
end
