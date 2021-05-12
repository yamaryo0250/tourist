class Touring < ApplicationRecord
  has_many :users, through: :user_tourings 
  belongs_to :ride
end
