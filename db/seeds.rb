# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

dogsitters = []
cities = []
dogs = []
dogstrolls = []
strolls = []

10.times do 
  city = City.create!(city_name: Faker::Address.city)
  cities << city
end
puts "city done"

20.times do 
  dogsitter = Dogsitter.create!(sitter_name: Faker::Name.name, city_id: cities[rand(0..9)].id)
  dogsitters << dogsitter
end
puts "dogsitter done"

20.times do
  dog = Dog.create!(dog_name: Faker::Name.first_name, city_id: cities[rand(0..9)].id)
  dogs << dog
end
puts "dog done"


t1 = Time.parse("2019-10-23 14:40:34")
t2 = Time.parse("2021-01-01 00:00:00")
40.times do
  stroll = Stroll.create!(date: rand(t1..t2), dogsitter_id: dogsitters[rand(0..19)].id, city_id: cities[rand(0..9)].id)
  strolls << stroll
end
puts "stroll done"

20.times do
  dogstroll = JoinTableDogStroll.create!(stroll_id: strolls[rand(0..39)].id, dog_id: dogs[rand(0..19)].id)
  dogstrolls << dogstroll
end
puts "dogstroll done"