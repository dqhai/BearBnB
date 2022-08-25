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
pet1 = Pet.new(name: 'brandy', address: 'house 1', details: 'its a dog mate', species: 'dog', diet: 'carnivorous', lifestyle: 'social')
pet2 = Pet.new(name: 'rum', address: 'house 2', details: 'its a dog too mate', species: 'dog', diet: 'carnivorous', lifestyle: 'active')
pet3 = Pet.new(name: 'vodka', address: 'house 3', details: 'its still a dog mate', species: 'dog', diet: 'carnivorous', lifestyle: 'social')
koala = Pet.new(name: "Chopper", address: "Uluru Rock", details: "needs to eat 2kg eucalyptus leaves everyday ", species: 'marsupian', diet: 'herbivorous', lifestyle: 'independent')
shibainu = Pet.new(name: "Toby", address: "Cologne", details: "such doge, much wow", species: 'dog', diet: 'carnivorous', lifestyle: 'independent')
donmeowleone = Pet.new(name: "donmeowleone", address: "Brooklyn 99", details: "Enjoys  Whiskey on the mice and Cuban cigars", species: 'cat', diet: 'carnivorous', lifestyle: 'likes scratches, independent')
lugia = Pet.new(name: "Lugia", address: "Alabasta", details: "flies around", species: 'pokemon', diet: 'omnivorous', lifestyle: 'independent')
panda = Pet.new(name: "Panda", address: "Szechuan", details: "eat, sleep, repeat", species: 'panda', diet: 'herbivorous', lifestyle: 'independent')
snek = Pet.new(name: "snek", address: "Brazil", details: "eat, sleep, repeat", species: 'reptile', diet: 'carnivorous', lifestyle: 'independent')
eagle = Pet.new(name: "birdie", address: "Alaska", details: "eat, sleep, repeat", species: 'bird', diet: 'carnivorous', lifestyle: 'independent')
goldfish = Pet.new(name: "goldie", address: "Pineapple House", details: "eat, sleep, repeat", species: 'fish', diet: 'omnivorous', lifestyle: 'social')
sloth = Pet.new(name: "Lazel", address: "Branch St. 7", details: "eat, sleep, repeat", species: 'sloth', diet: 'herbivorous', lifestyle: 'independent')
turtle = Pet.new(name: "Crush", address: "Pacific", details: "eat, sleep, repeat", species: 'reptile', diet: 'omnivorous', lifestyle: 'independent')
lizard = Pet.new(name: "Lizzy", address: "Under Rock 19", details: "eat, sleep, repeat", species: 'reptile', diet: 'omnivorous', lifestyle: 'independent')
salamander = Pet.new(name: "Sal", address: "Riverside 89", details: "eat, sleep, repeat", species: 'reptile', diet: 'omnivorous', lifestyle: 'independent')
trex = Pet.new(name: "Rex", address: "Stonehenge", details: "eat, sleep, repeat", species: 'dinosaur', diet: 'carnivorous', lifestyle: 'independent')
bunny = Pet.new(name: "BunnyMcBun", address: "Farm in Schwäbisch Alb", details: "eat, sleep, repeat", species: 'bunny', diet: 'herbivorous', lifestyle: 'social')
tiger = Pet.new(name: "Tigger", address: "Siberia", details: "eat, sleep, repeat", species: 'tiger', diet: 'carnivorous', lifestyle: 'independent')



puts "Assign pets to users..."

pet1.user = user1
pet2.user = user2
pet3.user = user3
koala.user = user1
shibainu.user = user3
donmeowleone.user = user2
lugia.user = user1
panda.user = user3
snek.user = user2
eagle.user = user3
goldfish.user = user1
sloth.user = user1
turtle.user = user1
lizard.user = user2
salamander.user = user2
trex.user = user3
bunny.user = user3
tiger.user = user3

puts "adding photos..."

file1 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661342861/pets/b23065b7-c6be-47d0-b676-bb8e764b7231-072319_WIL_DOG_JC0379_i4oaqy.jpg")
file2 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661347509/pets/berni.jpg")
file3 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661342930/pets/a1758ad340f21bfaec4de37632d416cc_pm4iz3.jpg")
file4 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661343233/pets/shutterstock156828686_w4idmn.jpg")
file5 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661342777/pets/shiba-inu_huqdrv.jpg")
file6 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661343167/pets/iStock-472160419_20_281_29_soym1t.jpg")
file7 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661342988/pets/latest_l2lqnl.gif")
file8 = URI.open("https://res.cloudinary.com/qhai/image/upload/v1661343052/pets/1653911215986_2Cpanda-isst-bambussprosse-100__v-16x9_2dM_-ad6791ade5eb8b5c935dd377130b903c4b5781d8_sb4cfk.jpg")
file9 = URI.open("https://preview.redd.it/bqmya1wp8f061.jpg?auto=webp&s=28c7e954a33dbaa729258088ca7f48a7a577fba4")
file10 = URI.open("https://cdn.britannica.com/92/152292-050-EAF28A45/Bald-eagle.jpg")
file11 = URI.open("https://d2cbg94ubxgsnp.cloudfront.net/Pictures/780xany/6/6/2/132662_shutterstock_155375867.jpg")
file12 = URI.open("https://cdn.britannica.com/62/142062-050-E51AEF0F/sloth-tree-branch.jpg")
file13 = URI.open("https://www.rainforest-alliance.org/wp-content/uploads/2021/06/green-sea-turtle-1-400x400.jpg.webp")
file14 = URI.open("https://upload.wikimedia.org/wikipedia/commons/2/25/Bangkok_Reptiles_Blue_crested_Lizard.jpg")
file15 = URI.open("https://www.regenwald.org/uploads/photos/article/wide/xl/salamandra.jpg")
file16 = URI.open("https://static01.nyt.com/images/2021/12/07/lens/07xp-jumper01/07xp-jumper01-mediumSquareAt3X.jpg")
file17 = URI.open("https://images.pexels.com/photos/2061754/pexels-photo-2061754.jpeg?cs=srgb&dl=pexels-riika-j-2061754.jpg&fm=jpg")
file18 = URI.open("https://cdnuploads.aa.com.tr/uploads/Contents/2021/07/28/thumbs_b_c_7fb6d5e33b48f26614aec167772cf172.jpg?v=095708")


pet1.photo.attach(io: file1, filename: "brandy.jpg", content_type: "image/jpg")
pet2.photo.attach(io: file2, filename: "rum.jpg", content_type: "image/jpg")
pet3.photo.attach(io: file3, filename: "vodka.jpg", content_type: "image/jpg")
koala.photo.attach(io: file4, filename: "Chopper.jpg", content_type: "image/jpg")
shibainu.photo.attach(io: file5, filename: "Toby.jpg", content_type: "image/jpg")
donmeowleone.photo.attach(io: file6, filename: "donmeowleone.jpg", content_type: "image/jpg")
lugia.photo.attach(io: file7, filename: "Lugia.jpg", content_type: "image/jpg")
panda.photo.attach(io: file8, filename: "Panda.jpg", content_type: "image/jpg")
snek.photo.attach(io: file9, filename: 'snek.jpg', content_type: 'image/jpg')
eagle.photo.attach(io: file10, filename: 'eagle', content_type: 'image/jpg')
goldfish.photo.attach(io: file11, filename: 'goldfish', content_type: 'image/jpg')
sloth.photo.attach(io: file12, filename: 'sloth', content_type: 'image/jpg')
turtle.photo.attach(io: file13, filename: 'turtle', content_type: 'image/jpg')
lizard.photo.attach(io: file14, filename: 'lizard', content_type: 'image/jpg')
salamander.photo.attach(io: file15, filename: 'salamander', content_type: 'image/jpg')
trex.photo.attach(io: file16, filename: 'trex', content_type: 'image/jpg')
bunny.photo.attach(io: file17, filename: 'bunny', content_type: 'image/jpg')
tiger.photo.attach(io: file18, filename: 'tiger', content_type: 'image/jpg')

puts "saving..."

pet1.save
pet2.save
pet3.save
koala.save
shibainu.save
donmeowleone.save
lugia.save
panda.save
snek.save
eagle.save
goldfish.save
sloth.save
turtle.save
lizard.save
salamander.save
trex.save
bunny.save
tiger.save

puts "Finished!"
