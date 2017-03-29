class CreateParticipations < ActiveRecord::Migration[5.0]
  def change
    create_table :participations do |t|
      t.integer :user_id
      t.string :user_fname
      t.string :meal_name
      t.string :meal_location
      t.string :meal_organisator

      t.timestamps
    end
  end
end
