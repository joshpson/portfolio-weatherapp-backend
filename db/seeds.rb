# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Location.delete_all

users = User.create([{first_name: "Carson", last_name: "Wentz", email: "cwentz@eagles.com", password: "eagles"}])

Location.create([{user: users.first, name: "Philadelphia", latitude: 39.9526, longitude: -75.1652, home: true, place_id: "ChIJ60u11Ni3xokRwVg-jNgU9Yk"}])
Location.create([{user: users.first, name: "Washington, D.C.", latitude: 38.889931, longitude: -77.009003, home: false, place_id: "ChIJW-T2Wt7Gt4kRKl2I1CJFUsI"}])
