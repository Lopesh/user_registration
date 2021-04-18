class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_permitted_parameters if controller_name == "registrations"

    protected
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up) do |user|
          user.permit(:email, :password,:password_confirmation, profile_attributes: [:street, :landmark, :city, :state, :pin_code])
        end
    end 
end
