class Participation < ApplicationRecord
  belongs_to :meal
  has_many :users
end
