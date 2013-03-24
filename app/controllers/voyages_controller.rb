class VoyagesController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create]


  def index
    @voyage = Voyage.new
    @voyages = Voyage.order(:voyage_date)
  end
  def new
    @voyage = Voyage.new
    @zeppelins = Zeppelin.all
  end
  def create
    voyage = Voyage.create(params[:voyage])
    @voyages = Voyage.all
  end

  def show
    @booking = Booking.new
    @voyage = Voyage.find(params[:id])
  end
end