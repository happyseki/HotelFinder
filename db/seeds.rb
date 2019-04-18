# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hotels = [
  { name: "The Palace New York", location: "755 5th Ave, New York, 10018" , img_url: "palace.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service" },
  { name: "Star Central Park", location: "200 Central Park, New York, 10019" , img_url: "star.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service" },
  { name: "Gorgerous Plaza", location: "W59th St, New York, 10022", img_url: "Gorgerous Plaza.jpg", amenities: "Free WiFi, Fitness Center, Spa, Pool, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "Warm Home Midtown", location: "1212 6th Ave, New York, 10020 ", img_url: "warmhome.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "Sweet Dream", location: "233 W46 st, New York, 10019 ", img_url: "sweetdream.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "Royal Times Square", location: "620 8th Ave, New York, 10036 ", img_url: "royal.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "AA New York Times square", location: "19 W44 St, New York, 10018 ", img_url: "aa.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "Tiara Manhattan", location: "1333 W4 St, New York, 10003 ", img_url: "tiara.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "The Ace Of Hearts", location: "6979 Prince St, New York, 10012 ", img_url: "Ace.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "MOMO SOHO", location: "3551 Grand St, 10013 ", img_url: "momosoho.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "Fresh Air", location: "15 Broad St, 10005 ", img_url: "freshair.jpg", amenities: "Free WiFi, Fitness Center, Spa, Pool, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "Hotel Inn Battery Park", location: "17 State St, 10004 ", img_url: "batterypark.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"}
]
hotels.each{|hotel| Hotel.create!(hotel)}

rooms = [
  { room_type: "Run Of House", rate: 199, hotel_id:1 },
  { room_type: "Run Of House", rate: 199, hotel_id:2 },
  { room_type: "Superior Room", rate: 499, hotel_id:1 },
  { room_type: "Deluxe Room", rate: 399, hotel_id:2 },
  { room_type: "Grand Suite, 1 King", rate: 599, hotel_id:1 },
  { room_type: "Central Park View", rate: 599, hotel_id:2 },
  { room_type: "Deluxe Room", rate: 499, hotel_id:3 },
  { room_type: "Premium Room", rate: 550, hotel_id:3 },
  { room_type: "Superior Room", rate: 599, hotel_id:3 },
  { room_type: "Executive Suite", rate: 699, hotel_id:3 },
  { room_type: "Petite Room", rate: 199, hotel_id:4 },
  { room_type: "Deluxe Room", rate: 299, hotel_id:4 },
  { room_type: "Premium Room", rate: 399, hotel_id:4 },
  { room_type: "Standard Room", rate: 199, hotel_id:5 },
  { room_type: "Premium Room", rate: 299, hotel_id:5 },
  { room_type: "Grand Room", rate: 399, hotel_id:5 },
  { room_type: "Classic Room", rate: 299, hotel_id:6 },
  { room_type: "Deluxe Room", rate: 399, hotel_id:6 },
  { room_type: "Executive City View Suite", rate: 599, hotel_id:6 },
  { room_type: "Standard Room", rate: 250, hotel_id:7 },
  { room_type: "Premium Room", rate: 350, hotel_id:7 },
  { room_type: "Superior Room", rate: 399, hotel_id:7 },
  { room_type: "Petite Room", rate: 199, hotel_id:8 },
  { room_type: "Deluxe Room", rate: 299, hotel_id:8 },
  { room_type: "Premium Room", rate: 399, hotel_id:8 },
  { room_type: "Petite Room", rate: 199, hotel_id:9 },
  { room_type: "Deluxe Room", rate: 299, hotel_id:9 },
  { room_type: "Grand Luxe Room", rate: 399, hotel_id:9 },
  { room_type: "Junior Suite", rate: 499, hotel_id:9 },
  { room_type: "Deluxe Room", rate: 399, hotel_id:10 },
  { room_type: "Grand Luxe Room", rate: 499, hotel_id:10 },
  { room_type: "Presidential Suite", rate: 599, hotel_id:10 },
  { room_type: "Petite Room", rate: 199, hotel_id:11 },
  { room_type: "Classic Room", rate: 299, hotel_id:11 },
  { room_type: "Superior Room", rate: 399, hotel_id:11 },
  { room_type: "Deluxe Room", rate: 399, hotel_id:12 },
  { room_type: "Grand Luxe Room", rate: 499, hotel_id:12 },
  { room_type: "Deluxe statue of liberty view room", rate: 599, hotel_id:12 }
]
rooms.each{|room|Room.create!(room)}

images = [
  { name: "palacer.jpg", hotel_id: 1 }, { name: "palacero.jpg", hotel_id: 1 }, { name: "palaceroom.jpg", hotel_id: 1 },
  { name: "shower.jpg", hotel_id: 1 }, { name: "palacehall.jpg", hotel_id: 1 }, { name: "bar.jpg", hotel_id: 1 },
  { name: "star1.jpg", hotel_id: 2 }, { name: "star2.jpg", hotel_id: 2 }, { name: "star3.jpg", hotel_id: 2 },
  { name: "star4.jpg", hotel_id: 2 }, { name: "star5.jpg", hotel_id: 2 }, { name: "star6.jpg", hotel_id: 2 },
]

images.each{|image|Image.create!(image)}

users = [
  { first_name: "Elaina", last_name: "Shi", email: "elaina@gmail.com", password: "abc123"},
  { first_name: "Andy", last_name: "Potter", email: "andy@gmail.com", password: "efg123" }
]
users.each{|user|User.create(user)}

bookings =[
  { check_in_date: "2019/05/01", check_out_date: "2019/05/03", num_rooms: 1, num_ppl: 1, room_id: 6, user_id: 1 },
  { check_in_date: "2019/06/01", check_out_date: "2019/06/03", num_rooms: 1, num_ppl: 2, room_id: 4, user_id:  2}
]
bookings.each{|booking|Booking.create(booking)}
