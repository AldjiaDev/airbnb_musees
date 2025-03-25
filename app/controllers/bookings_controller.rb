class BookingsController < ApplicationController
  before_action :set_museum
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @booking = @museum.bookings.new(booking_params)
    @booking.user = currnt_user

    if @booking.save
      redirect_to @museum, notice: "Réservation confirmée !"
    else
      redirect_to @museum, alert: "Erreur lors de la réservation."
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    if @booking.user == current_user
      @booking.destroy
      redirect_to @museum, notice: "Réservation annulée."
    else
      redirect_to @museum, alert: "Vous ne pouvez pas annuler cette réservation."
    end
  end

  private

  def set_museum
    @museum = Museum.find(params[:museum_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
