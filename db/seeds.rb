# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts 'Dropping db'
Restaurant.destroy_all
puts 'Db dropped'

puts 'creating restaurants'
Restaurant.create!(name: 'joli', address: 'Toulouse', category: 'chinese')
Restaurant.create!(name: 'moche', address: 'Paris', category: 'french')
Restaurant.create!(name: 'grand', address: 'Bordeaux', category: 'italian')
Restaurant.create!(name: 'gros', address: 'Lyon', category: 'japanese')
Restaurant.create!(name: 'costaud', address: 'Montpellier', category: 'belgian')
puts 'restaurants created'
