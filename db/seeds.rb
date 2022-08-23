# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Cleaning database..."
Pet.destroy_all

puts "Creating pets..."

koala = {name: "Chopper", address: "Uluru Rock", details: "needs to eat 2kg eucalyptus leaves everyday "}
shibainu = {name: "Toby", address: "Cologne", details: "such doge, much wow"}
donmeowleone = {name: "donmeowleone", address: "Brooklyn 99", details: "Enjoys  Whiskey on the mice and Cuban cigars"}

[koala, shibainu, donmeowleone].each do |attributes|
  pet = Pet.create!(attributes)
  puts "Created #{pet.name}"
end

puts "Creating users..."

puts "Finished!"
