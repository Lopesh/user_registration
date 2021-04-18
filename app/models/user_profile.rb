class UserProfile < ApplicationRecord
    belongs_to :user
    mount_uploader :avatar, AvatarUploader
    validates :address_line, :street, :landmark, :city, :state, :pin_code, presence: true
end
