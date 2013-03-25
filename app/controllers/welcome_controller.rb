class WelcomeController < ApplicationController
  def index
    @zeppelins = Zeppelin.order(:name)
    @voyages = Voyage.order(:voyage_date)
  end
end