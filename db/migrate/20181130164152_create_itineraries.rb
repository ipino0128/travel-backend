class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :description
      t.integer :user_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
