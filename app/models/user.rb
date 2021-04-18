class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable
  
  has_one :profile, class_name: 'UserProfile'

  accepts_nested_attributes_for :profile
  
  enum role: { admin: 1 , normal_user: 2 }
end
