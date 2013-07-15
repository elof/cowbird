class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :number_doors
      t.string :services
      t.integer :user_id

      t.timestamps
    end
  end
end
