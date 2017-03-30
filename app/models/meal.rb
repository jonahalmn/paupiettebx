# == Schema Information
#
# Table name: meals
#
#  id         :integer          not null, primary key
#  name       :string
#  entree     :string
#  plat       :string
#  dessert    :string
#  date       :date
#  nbpart     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Meal < ApplicationRecord
  belongs_to :user

  validates :name, presence: true

end
