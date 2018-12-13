class User < ApplicationRecord
  validates :name, uniqueness: true, presence: true
  validates_presence_of :email, :password
end