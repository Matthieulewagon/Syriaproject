class RegistrationsController < Devise::RegistrationsController

private

  def sign_up_params
    params.require(:user).permit(:role, :skype_username,:phone_number, :address, :username, :first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:role, :skype_username,:phone_number, :address, :username, :first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end
end
