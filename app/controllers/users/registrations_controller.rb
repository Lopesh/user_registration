class Users::RegistrationsController < Devise::RegistrationsController
    def new
        @user = User.new
        @user.build_profile
    end
    
    private
      def sign_up_params
          params.require(:user).permit(
            :name,
            :email, 
            :password, 
            :password_confirmation,
            profile_attributes: [ :address_line, :street, :landmark, :city, :state, :pin_code, :avatar ]
          )
      end
end