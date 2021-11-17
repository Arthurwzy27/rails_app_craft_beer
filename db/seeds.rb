# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Factory.create!(
  name: "À la fût",
  description: "Exceptional beers aged in oak barrels",
  location: "Barcelona",
  price_per_day: 32,
  capacity: 10,
  user_id: User.first.id
)
