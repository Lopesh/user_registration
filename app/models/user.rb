class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable
  
  has_one :profile, class_name: 'UserProfile'

  accepts_nested_attributes_for :profile  
end
