# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{first_name: "Carson", last_name: "Wentz", email: "cwentz@eagles.com", password: "eagles"}])

Location.create([{user: users.first, name: "Philadelphia", latitude: 39.9526, longitude: -75.1652, home: true, image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Philadelphia_from_South_Street_Bridge_July_2016_panorama_3b.jpg/1200px-Philadelphia_from_South_Street_Bridge_July_2016_panorama_3b.jpg"}])
