class User < ApplicationRecord
  has_many :entity
  has_many :group
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
