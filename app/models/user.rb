class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates_presence_of :password

  def self.authenticate(email, password)
   User.find_by(email: email, password: password) 
  end
end
