class ApplicationController < ActionController::Base
  helper_method :logged_in?

  def logged_in?
    !current_user.nil?
  end

  def authenticate_user
    return if current_user.present?

    flash[:danger] = "Please Sign in to perform that action or Sign up if you don't have an account"
    redirect_to root_path
  end
end
