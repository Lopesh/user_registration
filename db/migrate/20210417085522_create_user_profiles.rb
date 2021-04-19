class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.string :address_line
      t.string :street
      t.string :landmark
      t.string :city
      t.string :state
      t.string :pin_code
      t.integer :user_id

      t.timestamps
    end
    add_foreign_key :user_profiles, :users, column: :user_id, primary_key: "id"
  end
end
