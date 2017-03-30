# == Schema Information
#
# Table name: meals
#
#  id          :integer          not null, primary key
#  name        :string
#  entree      :string
#  edesc       :string
#  plat        :string
#  pdesc       :string
#  dessert     :string
#  ddesc       :string
#  date        :date
#  location    :string
#  nbpart      :integer
#  user_id     :integer
#  organisator :string
#  user_fname  :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Meal < ApplicationRecord
  belongs_to :user

  validates :name, presence: true

end
