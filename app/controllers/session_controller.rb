class SessionController < ApplicationController

  def new

  end

  def create
    @zeppelins = Zeppelin.order(:name)
    @voyages = Voyage.order(:voyage_date)
    @auth = Traveler.where(:email => params[:email]).first
    if @auth.present? && @auth.authenticate(params[:password])
      session[:traveler_id] = @auth.id
    else
      session[:traveler_id] = nil
      flash[:notice] = "Incorrect login. Please try again."
    end
    authenticate
  end

  def destroy
    session[:traveler_id] = nil
    authenticate
  end

end