# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "Cleaning database..."
Pet.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(email: 'afolabi@afolabi.com', password: '1234567', password_confirmation: '1234567')
user2 = User.create(email: 'axel@axel.com', password: '7654321', password_confirmation: '7654321')
user3 = User.create(email: 'hai@hai.com', password: 'password', password_confirmation: 'password')

p [user1, user2, user3]

puts "Creating pets..."
pet1 = Pet.new(name: 'brandy', address: 'house 1', details: 'its a dog mate')
pet2 = Pet.new(name: 'rum', address: 'house 2', details: 'its a dog too mate')
pet3 = Pet.new(name: 'vodka', address: 'house 3', details: 'its still a dog mate')
koala = Pet.new(name: "Chopper", address: "Uluru Rock", details: "needs to eat 2kg eucalyptus leaves everyday ")
shibainu = Pet.new(name: "Toby", address: "Cologne", details: "such doge, much wow")
donmeowleone = Pet.new(name: "donmeowleone", address: "Brooklyn 99", details: "Enjoys  Whiskey on the mice and Cuban cigars")
lugia = Pet.new(name: "Lugia", address: "Alabasta", details: "flies around")
panda = Pet.new(name: "Panda", address: "Bambooville", details: "eat, sleep, repeat")

puts "Assign pets to users..."

pet1.user = user1
pet2.user = user2
pet3.user = user3
koala.user = user1
shibainu.user = user3
donmeowleone.user = user2
lugia.user = user1
panda.user = user3

puts "adding photos..."

file1 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661342861/pets/b23065b7-c6be-47d0-b676-bb8e764b7231-072319_WIL_DOG_JC0379_i4oaqy.jpg")
file2 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661347509/pets/berni.jpg")
file3 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661342930/pets/a1758ad340f21bfaec4de37632d416cc_pm4iz3.jpg")
file4 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661343233/pets/shutterstock156828686_w4idmn.jpg")
file5 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661342777/pets/shiba-inu_huqdrv.jpg")
file6 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661343167/pets/iStock-472160419_20_281_29_soym1t.jpg")
file7 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661342988/pets/latest_l2lqnl.gif")
file8 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661343052/pets/1653911215986_2Cpanda-isst-bambussprosse-100__v-16x9_2dM_-ad6791ade5eb8b5c935dd377130b903c4b5781d8_sb4cfk.jpg")






pet1.photo.attach(io: file1, filename: "brandy.jpg", content_type: "image/jpg")
pet2.photo.attach(io: file2, filename: "rum.jpg", content_type: "image/jpg")
pet3.photo.attach(io: file3, filename: "vodka.jpg", content_type: "image/jpg")
koala.photo.attach(io: file4, filename: "Chopper.jpg", content_type: "image/jpg")
shibainu.photo.attach(io: file5, filename: "Toby.jpg", content_type: "image/jpg")
donmeowleone.photo.attach(io: file6, filename: "donmeowleone.jpg", content_type: "image/jpg")
lugia.photo.attach(io: file7, filename: "Lugia.jpg", content_type: "image/jpg")
panda.photo.attach(io: file8, filename: "Panda.jpg", content_type: "image/jpg")

puts "saving..."

pet1.save
pet2.save
pet3.save
koala.save
shibainu.save
donmeowleone.save
lugia.save

puts "Finished!"
