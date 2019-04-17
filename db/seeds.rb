# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hotels = [
  { name: "The Palace New York", location: "755 5th Ave, New York" , img_url: "palace.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service" },
  { name: "Star Central Park", location: "200 Central Park, New York" , img_url: "star.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service" }
]

hotels.each{|hotel| Hotel.create!(hotel)}

rooms = [
  { room_type: "Run Of House", rate: 199, hotel_id:1 },
  { room_type: "Run Of House", rate: 199, hotel_id:2 },
  { room_type: "Superior Room", rate: 499, hotel_id:1 },
  { room_type: "Deluxe Room", rate: 399, hotel_id:2 },
  { room_type: "Grand Suite, 1 King", rate: 599, hotel_id:1 },
  { room_type: "Central Park View", rate: 599, hotel_id:2 },
]
rooms.each{|room|Room.create!(room)}

users = [
  { first_name: "Elaina", last_name: "Shi", email: "elaina@gmail.com", password: "abc123"},
  { first_name: "Andy", last_name: "Potter", email: "andy@gmail.com", password: "efg123" }
]
users.each{|user|User.create(user)}

bookings =[
  { check_in_date: DateTime.strptime("05/01/2019", "%m/%d/%Y"), check_out_date: DateTime.strptime("05/03/2019", "%m/%d/%Y"), num_rooms: 1, num_ppl: 1, room_id: 6, user_id: 1 },
  { check_in_date: DateTime.strptime("06/01/2019", "%m/%d/%Y"), check_out_date: DateTime.strptime("06/03/2019", "%m/%d/%Y"), num_rooms: 1, num_ppl: 2, room_id: 4, user_id:  2}
]
bookings.each{|booking|Booking.create(booking)}
