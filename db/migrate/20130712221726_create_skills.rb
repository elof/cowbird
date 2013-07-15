class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :skill
      t.string :rate
      t.integer :user_id
      t.timestamps
    end
  end
end
