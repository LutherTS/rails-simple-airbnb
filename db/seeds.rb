# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Flat.destroy_all

puts "Creating 9 fake locations..."
9.times do
  Flat.create!(
    name: Faker::Color.color_name.capitalize,
    address: Faker::Address.full_address,
    description: Faker::Quote.famous_last_words,
    price_per_night: (49..99).to_a.sample,
    number_of_guests: (1..5).to_a.sample
  )
end

puts "Finished!"
