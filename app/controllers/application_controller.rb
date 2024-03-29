class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  skip_before_action :verify_authenticity_token

  include Mobu::DetectMobile

  protected

  def authorize
    authenticate_or_request_with_http_basic do |username, password|
      username == "admin" && password == "password"
    end 
  end

end
