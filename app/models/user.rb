class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :rides
  has_many :tourings, through: :user_tourings

  with_options presence: true do
    validates :nickname
    validates :birthday
  end
end
