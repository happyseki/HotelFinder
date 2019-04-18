class ChangeDatatypeToBookings < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :check_in_date, :string
    change_column :bookings, :check_out_date, :string
  end
end
