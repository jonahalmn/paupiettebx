class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :entree
      t.string :edesc
      t.string :plat
      t.string :pdesc
      t.string :dessert
      t.string :ddesc
      t.date :date
      t.string :location
      t.integer :nbpart
      t.integer :user_id
      t.string :organisator
      t.string :user_fname


      t.timestamps
    end
  end
end
