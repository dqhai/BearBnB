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
bear = Pet.new(name: "BB", address: "Swiss Alps", details: "eat, sleep, repeat", species: 'bear', diet: 'omnivorous', lifestyle: 'independent')
icebear = Pet.new(name: "Frosty", address: "North Pole", details: "eat, sleep, repeat", species: 'bear', diet: 'carnivorous', lifestyle: 'independent')
papagei = Pet.new(name: "Papageno", address: "Mexico", details: "eat, sleep, repeat", species: 'bird', diet: 'omnivorous', lifestyle: 'social')

dude = Pet.new(name: "karl", address: "cologne", details: "smoke weed everyday", species: 'superman', diet: 'carnivorous', lifestyle: 'smoke weed everyday')
cat2 = Pet.new(name: "simba", address: "kenya", details: "eat, sleep, repeat", species: 'cat', diet: 'carnivorous', lifestyle: 'cant wait to be king')
cat3 = Pet.new(name: "Mufasa", address: "kenya", details: "king", species: 'cat', diet: 'carnivorous', lifestyle: 'active')
cat4 = Pet.new(name: "Scar", address: "kenya", details: "backstabbing", species: 'cat', diet: 'carnivorous', lifestyle: 'independent')
mouse = Pet.new(name: "Jerry", address: "America", details: "disturb tom", species: 'mouse', diet: 'carnivorous', lifestyle: 'independent')

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
bear.user = user3
icebear.user = user1
papagei.user = user2

dude.user = user1
cat2.user = user1
cat3.user = user1
cat4.user = user1
mouse.user = user1

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
file19 = URI.open("https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F220613153916-growling-bear-stock.jpg")
file20 = URI.open("https://ksr-ugc.imgix.net/assets/036/689/361/e324a3a11a0c73123c696d00fafe8e15_original.jpg?ixlib=rb-4.0.2&crop=faces&w=1024&h=576&fit=crop&v=1647519459&auto=format&frame=1&q=92&s=b92d1c09c974d7299fb22696a701270d")
file21 = URI.open("https://www.euronatur.org/fileadmin/_processed_/a/4/csm_Braunbaer__c__Heinz_Lehmann_82aaddcf8a.jpg")

file24 = URI.open("https://media-exp1.licdn.com/dms/image/C4E03AQGiQcbOwCEKLQ/profile-displayphoto-shrink_800_800/0/1638977476479?e=2147483647&v=beta&t=XG0GGD_j8lM3IzZtSgAgIluN85lNDm7eKWBFAEt1sMs")
file25 = URI.open("https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg")
file26 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/330px-Cat_November_2010-1a.jpg")
file22 = URI.open("https://www.rd.com/wp-content/uploads/2021/01/GettyImages-1175550351.jpg?resize=2048,1339")
file23 = URI.open("https://i.guim.co.uk/img/media/2807e62f6651f16d36e38fa2697930c7b752bfa6/0_138_2144_1286/master/2144.jpg?width=620&quality=45&fit=max&dpr=2&s=08b231202e5770651167e4f2de573779")

file30 = URI.open("https://pbs.twimg.com/profile_images/907877641600081920/Q-T24ni-_400x400.jpg")
file31 = URI.open("https://static01.nyt.com/images/2022/04/22/arts/polar1/merlin_205535493_b0ddb701-76e0-4db4-8ef1-d30a9536ed14-mobileMasterAt3x.jpg")

file33 = URI.open("https://www.zooroyal.de/magazin/wp-content/uploads/2017/04/papagei-als-haustier-2-760x560.jpg")
file32 = URI.open("https://www.zooroyal.at/magazin/wp-content/uploads/2017/12/papagei-als-haustier-760x560.jpg")


pet1.photos.attach(io: file1, filename: "brandy.jpg", content_type: "image/jpg")
pet2.photos.attach(io: file2, filename: "rum.jpg", content_type: "image/jpg")
pet3.photos.attach(io: file3, filename: "vodka.jpg", content_type: "image/jpg")
koala.photos.attach(io: file4, filename: "Chopper.jpg", content_type: "image/jpg")
shibainu.photos.attach(io: file5, filename: "Toby.jpg", content_type: "image/jpg")
donmeowleone.photos.attach(io: file6, filename: "donmeowleone.jpg", content_type: "image/jpg")
lugia.photos.attach(io: file7, filename: "Lugia.jpg", content_type: "image/jpg")
panda.photos.attach(io: file8, filename: "Panda.jpg", content_type: "image/jpg")
snek.photos.attach(io: file9, filename: 'snek.jpg', content_type: 'image/jpg')
eagle.photos.attach(io: file10, filename: 'eagle', content_type: 'image/jpg')
goldfish.photos.attach(io: file11, filename: 'goldfish', content_type: 'image/jpg')
sloth.photos.attach(io: file12, filename: 'sloth', content_type: 'image/jpg')
turtle.photos.attach(io: file13, filename: 'turtle', content_type: 'image/jpg')
lizard.photos.attach(io: file14, filename: 'lizard', content_type: 'image/jpg')
salamander.photos.attach(io: file15, filename: 'salamander', content_type: 'image/jpg')
trex.photos.attach(io: file16, filename: 'trex', content_type: 'image/jpg')
bunny.photos.attach(io: file17, filename: 'bunny', content_type: 'image/jpg')
tiger.photos.attach(io: file18, filename: 'tiger', content_type: 'image/jpg')
# io = [file19, file20, file21]
bear.photos.attach([{io: file19, filename: 'tiger', content_type: 'image/jpg'}, {io: file20, filename: 'tiger', content_type: 'image/jpg'}, {io: file21, filename: 'tiger', content_type: 'image/jpg'}])
# bear.photo.attach(io: file20, filename: 'tiger', content_type: 'image/jpg')
# bear.photo.attach(io: file21, filename: 'tiger', content_type: 'image/jpg')
icebear.photos.attach([{io: file30, filename: 'icebabe', content_type: 'image/jpg'}, {io: file31, filename: 'icebabe2', content_type: 'image/jpg'}])
papagei.photos.attach([{io: file32, filename: 'icebabe', content_type: 'image/jpg'}, {io: file33, filename: 'icebabe2', content_type: 'image/jpg'}])

dude.photos.attach(io: file24, filename: 'dude', content_type: 'image/jpg')
cat2.photos.attach(io: file25, filename: 'cat2', content_type: 'image/jpg')
cat3.photos.attach(io: file26, filename: 'cat3', content_type: 'image/jpg')
cat4.photos.attach(io: file22, filename: 'cat4', content_type: 'image/jpg')
mouse.photos.attach(io: file23, filename: 'mouse', content_type: 'image/jpg')

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
bear.save
icebear.save
papagei.save
dude.save
cat2.save
cat3.save
cat4.save
mouse.save

puts "Finished!"
