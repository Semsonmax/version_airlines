class VoyagesController < ApplicationController
  def index
    @voyage = Voyage.new
  end
  def new
    binding.pry
    @voyage = Voyage.new
  end
end