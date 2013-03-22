class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate
  private
  def authenticate
    @auth = (session[:traveler_id].present?) ? Traveler.find(session[:traveler_id]) : nil
  end

  def check_if_admin
    redirect_to(root_path) if @auth.nil? || !@auth.is_admin
  end
end
