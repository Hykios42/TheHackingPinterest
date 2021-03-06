# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
 user = User.create!(name: Faker::LordOfTheRings.character)
end

10.times do
 pin = Pin.create!(url: "https://github.com/stympy/faker", user_id: rand(1..5))
end

10.times do
 comment = Comment.create!(content: Faker::Shakespeare.hamlet_quote, user_id: rand(1..5), pin_id: rand(1..10))
end