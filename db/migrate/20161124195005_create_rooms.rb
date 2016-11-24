class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :building
      t.string :unit
      t.integer :bedrooms
      t.integer :bathrooms
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps null: false
    end
  end
end
