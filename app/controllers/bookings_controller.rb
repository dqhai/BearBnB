class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_pet, only: %i[new create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.pet = @pet
    @booking.user = current_user
    if @booking.save
      redirect_to pet_path(@pet)
   else
      render :new, status: :unprocessable_entity
   end
    # @booking.user = @user
    # @booking.pet = @pet

  end

  def edit
    set_booking
  end

  def accept
    @booking.accepted? == true
  end

  def destroy
    @booking.destroy
    redirect_to pet_path(@booking.pet), status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end
end
