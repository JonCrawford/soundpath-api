# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create!(email: 'mail@joncrawford.com', name: "Jonathan Crawford")

(1..30).each do |i|
  Event.create!(datetime: i.weeks.ago, notes: Faker::Lorem.paragraphs(2), user: user ) #TODO: Change to creator eventually.
end
