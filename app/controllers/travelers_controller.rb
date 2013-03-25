class TravelersController < ApplicationController
  def new
    @traveler = Traveler.new
  end

  def create
    @traveler = Traveler.create(params[:traveler])
  end

  def show
    @traveler = Traveler.find(params[:id])
    #binding.pry
    #make sure page does not show if booking is nil
    #fix so traveler only sees his own ticket
  end
end