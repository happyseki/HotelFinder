# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
hotels = [
  { name: "The Palace New York", location: "755 5th Ave, New York, 10018" , img_url: "palace.jpg", amenities: "Free WiFi, Fitness Center, Spa, Pool, Restaurant, Bar/Lounge, Laundry Service" },
  { name: "Star Central Park", location: "200 Central Park, New York, 10019" , img_url: "star.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service" },
  { name: "Gorgerous Plaza", location: "W59th St, New York, 10022", img_url: "Gorgerous Plaza.jpg", amenities: "Free WiFi, Fitness Center, Spa, Pool, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "Warm Home Midtown", location: "1212 6th Ave, New York, 10020 ", img_url: "warmhome.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "Sweet Dream", location: "233 W46 st, New York, 10019 ", img_url: "sweetdream.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "Royal Times Square", location: "620 8th Ave, New York, 10036 ", img_url: "royal.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "AA New York Times square", location: "19 W44 St, New York, 10018 ", img_url: "aa.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "Tiara Manhattan", location: "1333 W4 St, New York, 10003 ", img_url: "tiara.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "The Ace Of Hearts", location: "6979 Prince St, New York, 10012 ", img_url: "Ace.jpg", amenities: "Free WiFi, Fitness Center, Spa, Restaurant, Bar/Lounge, Laundry Service"},
  { name: "MOMO SOHO", location: "3551 Grand St, 10013 ", img_url: "momosoho.jpg", amenities: "Free WiFi, Fitness Center, Spa, Pool, Restaurant, Bar/Lounge, Laundry Service"},
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
  { name: "https://cdn.pixabay.com/photo/2015/09/21/09/53/villa-cortine-palace-949547_960_720.jpg", hotel_id: 1 }, { name: "https://images.pexels.com/photos/262048/pexels-photo-262048.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 1 },
  { name: "https://images.pexels.com/photos/1579253/pexels-photo-1579253.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 1 },
  { name: "https://images.pexels.com/photos/342800/pexels-photo-342800.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 1 }, { name: "https://images.pexels.com/photos/331107/pexels-photo-331107.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260", hotel_id: 1 }, { name: "https://cdn.pixabay.com/photo/2016/11/18/17/41/summer-1836046_960_720.jpg", hotel_id: 1 },
  { name: "https://cdn.pixabay.com/photo/2018/02/09/11/38/within-3141442_960_720.jpg", hotel_id: 2 }, { name: "https://cdn.pixabay.com/photo/2017/01/14/12/48/hotel-1979406_960_720.jpg", hotel_id: 2 }, { name: "https://cdn.pixabay.com/photo/2016/06/10/01/05/hotel-room-1447201_960_720.jpg", hotel_id: 2 },
  { name: "https://cdn.pixabay.com/photo/2016/06/10/01/03/hotel-1447197_960_720.jpg", hotel_id: 2 }, { name: "https://images.pexels.com/photos/2507016/pexels-photo-2507016.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 2 }, { name: "https://images.pexels.com/photos/2677398/pexels-photo-2677398.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 2 },
  { name: "https://cdn.pixabay.com/photo/2015/03/24/13/21/indoor-687607_960_720.jpg", hotel_id: 3 }, { name: "https://static4.depositphotos.com/1008939/323/i/450/depositphotos_3232226-stock-photo-hotel-room.jpg", hotel_id: 3 }, { name: "https://images.pexels.com/photos/280209/pexels-photo-280209.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 3 },
  { name: "https://cdn.pixabay.com/photo/2015/09/21/09/54/villa-cortine-palace-949552_960_720.jpg", hotel_id: 3 }, { name: "https://images.pexels.com/photos/1267438/pexels-photo-1267438.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 3 }, { name: "https://images.pexels.com/photos/2677398/pexels-photo-2677398.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 3 },
  { name: "https://images.pexels.com/photos/277572/pexels-photo-277572.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 4 }, { name: "https://images.pexels.com/photos/172872/pexels-photo-172872.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 4 }, { name: "https://images.pexels.com/photos/271639/pexels-photo-271639.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 4 },
  { name: "https://images.pexels.com/photos/271619/pexels-photo-271619.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 4 }, { name: "https://cdn.pixabay.com/photo/2016/04/15/11/50/hotel-1330854_960_720.jpg", hotel_id: 4 }, { name: "https://images.pexels.com/photos/331107/pexels-photo-331107.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 4 },
  { name: "https://images.pexels.com/photos/573552/pexels-photo-573552.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 5 }, { name: "https://cdn.pixabay.com/photo/2016/03/28/09/34/bedroom-1285156_960_720.jpg", hotel_id: 5 }, { name: "https://images.pexels.com/photos/271618/pexels-photo-271618.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 5 },
  { name: "https://images.pexels.com/photos/707581/pexels-photo-707581.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 5 }, { name: "https://images.pexels.com/photos/941864/pexels-photo-941864.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 5 }, { name: "https://images.pexels.com/photos/1571462/pexels-photo-1571462.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 5 },
  { name: "https://cdn.pixabay.com/photo/2015/03/11/10/34/hall-668475_960_720.jpg", hotel_id: 6 }, { name: "https://cdn.pixabay.com/photo/2013/12/28/11/10/room-234641_960_720.jpg", hotel_id: 6 }, { name: "https://cdn.pixabay.com/photo/2018/03/01/03/52/furniture-3189674_960_720.jpg", hotel_id: 6 },
  { name: "https://images.pexels.com/photos/1457847/pexels-photo-1457847.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 6 }, { name: "https://images.pexels.com/photos/1707957/pexels-photo-1707957.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 6 }, { name: "https://cdn.pixabay.com/photo/2015/09/15/11/04/hotel-940730_960_720.jpg", hotel_id: 6 },
  { name: "https://cdn.pixabay.com/photo/2016/10/18/09/02/hotel-1749602_960_720.jpg", hotel_id: 7 }, { name: "https://images.pexels.com/photos/1879069/pexels-photo-1879069.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 7 }, { name: "https://images.pexels.com/photos/4217/hotel-bed-bedroom-room.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 7 },
  { name: "https://images.pexels.com/photos/1907044/pexels-photo-1907044.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 7 }, { name: "https://images.pexels.com/photos/342800/pexels-photo-342800.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 7 }, { name: "https://images.pexels.com/photos/2225580/pexels-photo-2225580.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 7 },
  { name: "https://images.pexels.com/photos/2029719/pexels-photo-2029719.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 8 }, { name: "https://images.pexels.com/photos/2029698/pexels-photo-2029698.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 8 }, { name: "https://images.pexels.com/photos/2029687/pexels-photo-2029687.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 8 },
  { name: "https://cdn.pixabay.com/photo/2014/05/01/20/38/bathroom-335748_960_720.jpg", hotel_id: 8 }, { name: "https://images.pexels.com/photos/941864/pexels-photo-941864.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 8 }, { name: "https://images.pexels.com/photos/265947/pexels-photo-265947.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 8 },
  { name: "https://images.pexels.com/photos/693895/pexels-photo-693895.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 9 }, { name: "https://images.pexels.com/photos/358527/pexels-photo-358527.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 9 }, { name: "https://cdn.pixabay.com/photo/2017/04/28/22/16/room-2269594_960_720.jpg", hotel_id: 9 },
  { name: "https://images.pexels.com/photos/1591047/pexels-photo-1591047.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 9 }, { name: "https://images.pexels.com/photos/172872/pexels-photo-172872.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 9 }, { name: "https://images.pexels.com/photos/63633/bar-local-cong-ireland-63633.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 9 },
  { name: "https://cdn.pixabay.com/photo/2017/04/28/22/16/room-2269594_960_720.jpg", hotel_id: 10 }, { name: "https://images.pexels.com/photos/1454806/pexels-photo-1454806.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260", hotel_id: 10 }, { name: "https://images.pexels.com/photos/164595/pexels-photo-164595.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 10 },
  { name: "https://cdn.pixabay.com/photo/2016/02/01/18/27/wedding-table-1174142_960_720.jpg", hotel_id: 10 }, { name: "https://images.pexels.com/photos/2507016/pexels-photo-2507016.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 10 }, { name: "pool.jpg", hotel_id: 10 },
  { name: "https://images.pexels.com/photos/2015562/pexels-photo-2015562.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500", hotel_id: 11 }, { name: "https://cdn.pixabay.com/photo/2018/02/13/09/39/modern-minimalist-bathroom-3150293_960_720.jpg", hotel_id: 11 }, { name: "https://cdn.pixabay.com/photo/2015/11/06/11/46/interior-1026464_960_720.jpg", hotel_id: 11 },
  { name: "https://cdn.pixabay.com/photo/2017/01/14/12/48/hotel-1979406_960_720.jpg", hotel_id: 11 }, { name: "https://images.pexels.com/photos/751046/pexels-photo-751046.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 11 }, { name: "https://cdn.pixabay.com/photo/2014/08/05/18/17/dining-410832__340.jpg", hotel_id: 11 },
  { name: "https://images.pexels.com/photos/1501272/pexels-photo-1501272.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 12 }, { name: "https://cdn.pixabay.com/photo/2014/10/16/08/39/bedroom-490779_960_720.jpg", hotel_id: 12 }, { name: "https://images.pexels.com/photos/1457845/pexels-photo-1457845.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 12 },
  { name: "https://images.pexels.com/photos/280209/pexels-photo-280209.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 12 }, { name: "https://images.pexels.com/photos/34650/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940", hotel_id: 12 }, { name: "ballroom.jpg", hotel_id: 12 }
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
