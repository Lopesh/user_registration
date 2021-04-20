class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.current_user=(user)
      Thread.current[:current_user] = user
  end

  def self.current_user
      Thread.current[:current_user]
  end
end
