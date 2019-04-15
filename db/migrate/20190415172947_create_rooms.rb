class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :room_type
      t.decimal :rate
      t.integer :hotel_id

      t.timestamps
    end
  end
end
