# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Dogsitter.destroy_all
Dog.destroy_all
Stroll.destroy_all

10.times do

    

    dogsitter = Dogsitter.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)

    dog = Dog.create!(dog_name: Faker::Beer.brand)

    stroll = Stroll.create!(date: Faker::Date.between(from: '2020-10-01', to: '2021-03-01'), dogsitter: dogsitter, dog: dog)

    city = City.create!(city_name: Faker::Address.city, dogsitter: dogsitter, dog: dog)
end