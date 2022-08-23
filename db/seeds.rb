# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Pet.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(email: 'afolabi@afolabi.com', password: '1234567', password_confirmation: '1234567')
user2 = User.create(email: 'axel@axel.com', password: '7654321', password_confirmation: '7654321')
user3 = User.create(email: 'hai@hai.com', password: 'password', password_confirmation: 'password')

puts "Creating pets..."
pet1 = Pet.new(name: 'brandy', address: 'house 1', details: 'its a dog mate')
pet2 = Pet.new(name: 'rum', address: 'house 2', details: 'its a dog too mate')
pet3 = Pet.new(name: 'vodka', address: 'house 3', details: 'its still a dog mate')
koala = Pet.new(name: "Chopper", address: "Uluru Rock", details: "needs to eat 2kg eucalyptus leaves everyday ")
shibainu = Pet.new(name: "Toby", address: "Cologne", details: "such doge, much wow")
donmeowleone = Pet.new(name: "donmeowleone", address: "Brooklyn 99", details: "Enjoys  Whiskey on the mice and Cuban cigars")
lugia = Pet.new(name: "Lugia", address: "Alabasta", details: "flies around")

pet1.user = user1
pet2.user = user2
pet3.user = user3
koala.user = user1
shibainu.user = user3
donmewleone.user = user2
lugia.user = user3

pet1.save
pet2.save
pet3.save
koala.save
shibainu.save
donmeowleone.save
lugia.save


puts "Finished!"
