# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# db/seeds.rb
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
wuerstel = { name: "Wuerstel", address: "8 Karlstrasse, Munich 80687", category: "belgian" }
remulade = { name: "Remulade", address: "7 Boundary St, Paris E2 7JE", category: "french" }
sushi_wok = { name: "Sushi Wok", address: "7 Boundary St, Tokio E2 7JE", category: "japanese" }


[ dishoom, pizza_east, wuerstel, remulade, sushi_wok ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
