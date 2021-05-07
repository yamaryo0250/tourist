class Ride < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :displacement
  belongs_to :style
  belongs_to :term
  belongs_to :area

  belongs_to :user
end
