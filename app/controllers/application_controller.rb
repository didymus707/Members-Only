class ApplicationController < ActionController::Base
  def authenticate_user
    self.redirect_to root_path
    flash[:notice]= 'Please Sign in first or Sign up'
  end
end
