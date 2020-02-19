# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  { name: 'Sushi Seki', address: 'Chelsea', category: 'japanese' },
  { name: 'Buddakan', address: 'Meatpacking', category: 'chinese' },
  { name: 'Via Carota', address: 'West Village', category: 'italian' },
  { name: 'Daniel', address: 'Upper East Side', category: 'french' },
  { name: 'Petit Abeille', address: 'East Village', category: 'belgian' }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'

Review.create(content: "Great mussels", rating: 3, restaurant_id: 5)
