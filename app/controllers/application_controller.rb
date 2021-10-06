class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!
  before_action :create_categories_buttons

  def index; end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  def set_current_user
    if session[:id]
      @current_user ||= User.find(session[:id])
    else
      @current_user = nil
    end
  end

  def authenticate_user
    flash[:alert] = 'Please login!'
    redirect_to new_user_session_path if session[:id].nil?
  end

  def create_categories_buttons
    @top_categories = Category.order(:priority).limit(5)
  end
end
