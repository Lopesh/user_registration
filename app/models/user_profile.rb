class UserProfile < ApplicationRecord
    belongs_to :user
    mount_uploader :avatar, AvatarUploader
    validates :address_line, :street, :landmark, :city, :state, :pin_code, presence: true

    validate :phone_number_validation
    validate :admin_profile_details_validation

    def phone_number_validation
        @current_user = UserProfile.current_user
        if !@current_user.admin? && self.phone_number_changed?
            self.errors.add(:phone_number, " you cannot update. Because you are not Admin User.")
        end
    end

    def admin_profile_details_validation
        @current_user = UserProfile.current_user
        if @current_user.admin? && self.changed? && !self.phone_number_changed?
            self.errors.add(:base, " Admin Not able to update own details")
        end
    end
end
