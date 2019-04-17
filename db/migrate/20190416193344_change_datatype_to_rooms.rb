class ChangeDatatypeToRooms < ActiveRecord::Migration[5.2]
  def change
    change_column :rooms, :rate, :integer
  end
end
