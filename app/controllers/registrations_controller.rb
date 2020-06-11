class RegistrationsController < Devise::RegistrationsController
  after_action :change_status
  
  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end

  def change_status
    if user_signed_in?
      current_user.update_attribute(:active, true)
    end
  end
end