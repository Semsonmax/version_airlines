class VoyagesController < ApplicationController
  def index
    @voyage = Voyage.new
  end
  def new
    @voyage = Voyage.new
  end
end