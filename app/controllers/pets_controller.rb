class PetsController < ApplicationController
  def index
    if params[:query].present?
      @pets = Pet.search_by_name_and_species(params[:query])
    else
      @pets = Pet.all
    end

    @carnivores = Pet.where(diet: "carnivorous")
    @herbivores = Pet.where(diet: "herbivorous")
    @socialites = Pet.where(lifestyle: "social")
    @infps = Pet.where(lifestyle: "independent")
    @dogs = Pet.where(species: "dog")
    @reptile = Pet.where(species: "reptile")


    @markers = @pets.geocoded.map do |pet|
      {
        lat: pet.latitude,
        lng: pet.longitude,
        info_window: render_to_string(partial: "info_window", locals: {pet: pet}),
        image_url: helpers.asset_url("logo.png")
      }
    end
  end

  def new
    @pet = Pet.new
  end

  def show
    @pet = Pet.find(params[:id])
    @booking = Booking.new
  end

  def create
    @pet = Pet.new(pet_params)
    @pet.user = current_user
    if @pet.save
      redirect_to pet_path(@pet)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @pet = Pet.find(params[:id])
    @pet.destroy
    redirect_to pets_path, status: :see_other
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
    params.require(:pet).permit(:name, :address, :details, :species, :diet, :lifestyle, photos: [])
  end
end
