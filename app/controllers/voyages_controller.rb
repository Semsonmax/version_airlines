class VoyagesController < ApplicationController
  before_filter :check_if_admin, :only => [:new, :create]

  def index
  end
end