class Group < ApplicationRecord
  belongs_to :user
  has_many :entity
end
