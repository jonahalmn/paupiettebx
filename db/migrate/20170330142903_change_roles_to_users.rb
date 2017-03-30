class ChangeRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :role, :integer
    rename_column :users, :num, :street_number
    rename_column :users, :fname, :first_name
    rename_column :users, :intersts, :interests
  end
end
