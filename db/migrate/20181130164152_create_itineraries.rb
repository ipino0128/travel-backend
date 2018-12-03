class CreateItineraries < ActiveRecord::Migration[5.2]
  def change
    create_table :itineraries do |t|
      t.string :title
      t.string :description
      t.string :img_url
      t.integer :user_id
      t.integer :destination_id

      t.timestamps
    end
  end
end
