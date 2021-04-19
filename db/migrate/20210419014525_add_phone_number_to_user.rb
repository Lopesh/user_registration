class AddPhoneNumberToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :user_profiles, :phone_number, :string
  end
end
