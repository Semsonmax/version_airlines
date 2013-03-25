class BookingsController < ApplicationController
  def create
    Booking.create(seat_id: params[:seat_id], traveler_id: params[:traveler_id], voyage_id: params[:voyage_id])
    @voyage = Voyage.find(params[:voyage_id])
    seat = Seat.find(params[:seat_id])
    flash[:message] = "CONFIRMATION: You have booked seat #{seat.convert_column_to_letter} - #{seat.row}on the voyage #{@voyage.code}"
  end
end