# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

100.times do |index|
  City.create(
    id: index + 1,
    name: Faker::Address.city,
    state: Faker::Address.state_abbr
  )

  Company.create(
    id: index + 1,
    name: Faker::Company.name,
    city_id: Faker::Number.between(from: 1, to: 100)
  )
end

10000.times do |index|
  Person.create(
    id: index + 1,
    name: Faker::Name.name,
    email: Faker::Internet.email,
    city_id: Faker::Number.between(from: 1, to: 100)
  )
end