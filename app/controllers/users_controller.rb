class UsersController < ApplicationController
    before_action :set_user, on: [:edit, :update, :self_profile]

    def index
        @users = User.all.order(id: :desc)
    end
    
    def edit
        @profile = @user.profile
    end

    def update
        respond_to do |format|
            if @user.update(user_params)
                format.html { redirect_to edit_user_path(@user), flash: { notice: 'User updated successfully created.' } }
            else
                format.html { redirect_to edit_user_path(@user), flash: { error: @user.errors.full_messages.join(" <br/> ") } }
            end
        end
    end
    
    def self_profile
    end

    private
      def set_user
          @user = User.find_by(id: params[:id])
      end

      def user_params
        params.require(:user).permit(
          :name,
          :email, 
          :password, 
          :password_confirmation,
          profile_attributes: [ :address_line, :street, :landmark, :city, :state, :pin_code, :avatar, :id, :phone_number ]
        )
      end  
end