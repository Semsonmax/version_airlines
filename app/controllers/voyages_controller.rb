class VoyagesController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create]

  def index
    @voyage = Voyage.new
  end
  def new
    @voyage = Voyage.new
    @zeppelins = Zeppelin.all
  end

  def show
    @voyage = Voyage.find(params[:id])
  end
end