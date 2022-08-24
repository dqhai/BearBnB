class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_user, only: %i[new create]
  before_action :set_pet, only: %i[new create]
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.pet = @pet
    @booking.save!
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
    params.require(:booking).permit(:pet_id, :user_id, :start, :end)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_pet
    @pet = Pet.find(params[:pet_id])
  end
end
