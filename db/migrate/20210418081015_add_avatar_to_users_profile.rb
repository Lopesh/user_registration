class AddAvatarToUsersProfile < ActiveRecord::Migration[6.0]
  def change
    add_column :user_profiles, :avatar, :string
  end
end
