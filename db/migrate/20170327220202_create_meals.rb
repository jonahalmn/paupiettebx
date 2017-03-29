class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :entree
      t.string :plat
      t.string :dessert
      t.datetime :date
      t.string :location
      t.integer :nbpart
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
