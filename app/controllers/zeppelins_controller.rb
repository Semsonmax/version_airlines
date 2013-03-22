class ZeppelinsController < ApplicationController
  before_filter :check_if_admin
  def index
    @zeppelins = Zeppelin.order(:name)
  end

  def new
    @zeppelin = Zeppelin.new
  end

  def create
    @zeppelin = Zeppelin.create(params[:zeppelin])
    @zeppelins = Zeppelin.order(:name)
  end

end