class ApplicationController < ActionController::Base
  helper_method :is_logged_in?

  def is_logged_in?
    !current_user.nil?
  end

  def authenticate_user
    self.redirect_to root_path
    flash[:notice] = "Please Sign in first or Sign up if you don't have an account"
  end
end
