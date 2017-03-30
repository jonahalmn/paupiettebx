class ChangeRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :role, :boolean
    rename_column :users, :num, :street_number
    rename_column :users, :fname, :first_name
    rename_column :users, :intersts, :interests
    add_column :meals, :user_id, :integer
    add_column :participations, :meal_street, :string
    

  end
end
