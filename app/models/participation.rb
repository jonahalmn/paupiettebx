# == Schema Information
#
# Table name: participations
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  user_fname       :string
#  meal_id          :integer
#  meal_name        :string
#  meal_location    :string
#  meal_organisator :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Participation < ApplicationRecord
  belongs_to :meal#, optional: true
  belongs_to :user

  validates :user, presence: true
  validates :meal, presence: true

end
