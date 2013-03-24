class BookingsController < ApplicationController
  def create
    Booking.create(seat_id: params[:seat_id], traveler_id: params[:traveler_id], voyage_id: params[:voyage_id])
    @voyage = Voyage.find(params[:voyage_id])
  end
end