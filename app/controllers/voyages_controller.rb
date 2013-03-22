class VoyagesController < ApplicationController
  def index
  end

  def show
    @voyage = Voyage.find(params[:id])
  end
end