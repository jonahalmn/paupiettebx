class RemoveColumnsFromMeals < ActiveRecord::Migration[5.0]
  def change
    remove_column :meals, :edesc, :string
    remove_column :meals, :pdesc, :string
    remove_column :meals, :ddesc, :string
    remove_column :meals, :location, :string
    remove_column :meals, :user_id, :integer
    remove_column :meals, :organisator, :string
    remove_column :meals, :user_fname, :string
  end
end
