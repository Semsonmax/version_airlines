class BookingsController < ApplicationController
  def create
    seat = Seat.where(row: params[:seat_row], column: params[:seat_column]).first
    Booking.create(seat_id: seat.id, traveler_id: params[:traveler_id], voyage_id: params[:voyage_id])
    @voyage = Voyage.find(params[:voyage_id])
  end
end