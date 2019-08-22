class ReservationsController < ApplicationController
  def show
    @reservation = current_user.reservations.find(params[:id])
    if @reservation.nil?
      redirect_to root, notice: 'It is not your resa buddy!'
    else
      render :show
    end
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @new_reservation = Reservation.new(reservation_params)
    @new_reservation.bike = @bike
    @new_reservation.user = current_user
    if @new_reservation.save
      redirect_to reservation_path(@new_reservation), notice: 'Reservation was successfully booked!'
    else
      redirect_to bike_path(@bike), alert: 'This bike is not open for reservation at this date!'
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date)
  end
end
