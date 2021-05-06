# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'destroy old data'

Flat.destroy_all

require 'faker'

10.times do
  flat = Flat.new(
    name: Faker::Address.street_name,
    description: Faker::Hipster.sentence,
    address: Faker::Address.street_address,
    price_per_night: Faker::PhoneNumber.subscriber_number,
    number_of_guests: (0..10).to_a.sample
  )
  flat.save
end
