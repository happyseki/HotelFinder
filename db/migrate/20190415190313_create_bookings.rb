class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :check_in_date
      t.datetime :check_out_date
      t.integer :num_rooms
      t.integer :num_ppl
      t.integer :room_id
      t.integer :user_id

      t.timestamps
    end
  end
end
