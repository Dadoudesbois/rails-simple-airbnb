# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
require 'faker'
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
6.times do
  Flat.create!(
    name: Faker::GreekPhilosophers.unique.name,
    address: Faker::Address.unique.full_address,
    description: Faker::GreekPhilosophers.unique.quote,
    price_per_night: rand(35..190),
    number_of_guests: rand(2..10),
  )
end


