class ApplicationController < ActionController::Base
		protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?


private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
  params.require(:user).permit(:avatar)
end

		protected
			def configure_permitted_parameters
				devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :firstname, :lastname, :password, :email, :password_confirmation, :sign_up_code, :avatar) }
				devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:username, :password, :remember_me) }
    			devise_parameter_sanitizer.for(:account_update) { |u| 
     			u.permit(:password, :password_confirmation, :current_password, :username, :email, :avatar) 
    }
		end

end