class SessionController < ApplicationController

  def new

  end

  def create
    @auth = Traveler.where(:email => params[:email]).first
    if @auth.present? && @auth.authenticate(params[:password])
      session[:traveler_id] = @auth.id
    else
      session[:traveler_id] = nil
    end
  end

  def destroy
    session[:traveler_id] = nil
  end

end