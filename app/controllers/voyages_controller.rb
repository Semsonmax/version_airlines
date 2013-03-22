class VoyagesController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create]

  def index
    @voyage = Voyage.new
  end
  def new
    binding.pry
    @voyage = Voyage.new
  end
end