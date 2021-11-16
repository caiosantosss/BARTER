# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'json'

puts puts 'Cleaning up database...'
Offering.destroy_all
User.destroy_all
Item.destroy_all
puts 'Database cleaned'

puts 'Creating Users and Items'
10.times do
  user_name = Faker::Superhero.name
  user = User.new(
    name: user_name,
    email: Faker::Internet.email(name: user_name),
    phone_number: Faker::PhoneNumber.cell_phone,
    location: Faker::Address.full_address,
    password: '123456'
  )
  user.save!
  5.times do
    item = Item.create!(
      name: Faker::House.furniture,
      description: Faker::Lorem.paragraph,
      user: user
    )
  end
end

puts 'User and items created'
puts 'Creating offerings'

User.find_each do |user|
  items = Item.where.not(user: user).sample(2)
  items.each do |item|
    Offering.create!(
      offered: user.items.sample,
      posted: item
    )
  end
end

puts 'Created offerings'
