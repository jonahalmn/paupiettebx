class Participation < ApplicationRecord
  belongs_to :meal, optional: true
  has_many :users
end
