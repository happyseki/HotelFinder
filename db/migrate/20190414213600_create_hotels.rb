class CreateHotels < ActiveRecord::Migration[5.2]
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :location
      t.string :img_url
      t.text :amenities

      t.timestamps
    end
  end
end
