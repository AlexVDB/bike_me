class ReservationsController < ApplicationController
  def show
    @reservation = Reservation.find(params[:id])
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @reservation = Reservation.new(reservation_params)
    @reservation.bike = @bike
    @reservation.user = current_user
    if @reservation.save
      redirect_to @reservation, notice: 'Reservation was successfully booked!'
    else
      render :new
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date)
  end
end
