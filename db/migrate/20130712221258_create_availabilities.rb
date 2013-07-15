class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.string :day_of_week
      t.string :time_of_day
      t.integer :car_id
      t.integer :skill_id

      t.timestamps
    end
  end
end
