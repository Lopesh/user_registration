class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable
  
  has_one :profile, class_name: 'UserProfile'

  accepts_nested_attributes_for :profile
  
  validates :email,:name, presence: true
  
  enum role: { admin: 1 , normal_user: 2 }

  scope :without_admin ,-> { where(role: 2)}
end
