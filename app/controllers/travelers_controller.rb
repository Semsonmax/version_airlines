class TravelersController < ApplicationController
  def new
    @traveler = Traveler.new
  end

  def create
    @traveler = Traveler.create(params[:traveler])
  end
end