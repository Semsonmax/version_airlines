class ZeppelinsController < ApplicationController
  def index
    @zeppelins = Zeppelin.all
  end

  def new
    @zeppelin = Zeppelin.new
  end


end