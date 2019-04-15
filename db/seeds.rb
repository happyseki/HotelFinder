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

hotels.each{|hotel| Hotel.create(hotel)}
