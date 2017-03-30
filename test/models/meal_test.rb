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

require 'test_helper'

class MealTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
