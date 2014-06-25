class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.text :cuisine
      t.integer :user_id
      t.string :location
      t.integer :max_occupancy

      t.timestamps
    end
  end
end
