User.destroy_all

user_one = User.create!(email: "user@example.com", password: "password")

Factory.create!(
  name: "À la fût",
  description: "Exceptional beers aged in oak barrels",
  location: "Barcelona",
  price_per_day: rand(12..59),
  capacity: rand(7..31),
  user: user_one
)

Factory.create!(
  name: "Red Shed Brewing",
  description: "Exceptional beers aged in oak barrels",
  location: "Madrid",
  price_per_day: rand(12..59),
  capacity: rand(7..31),
  user: user_one
)

Factory.create!(
  name: "À la fût",
  description: "Exceptional beers aged in oak barrels",
  location: "Mallorca",
  price_per_day: rand(12..59),
  capacity: rand(7..31),
  user: user_one
)

Factory.create!(
  name: "Fifth Frame Brewing",
  description: "Exceptional beers aged in oak barrels",
  location: "Andorra",
  price_per_day: rand(12..59),
  capacity: rand(7..31),
  user: user_one
)

Factory.create!(
  name: "Andorra Beer Fest",
  description: "Exceptional beers aged in oak barrels",
  location: "Burgos",
  price_per_day: rand(12..59),
  capacity: rand(7..31),
  user: user_one
)

Factory.create!(
  name: "Brooklyn Brewery",
  description: "Exceptional beers aged in oak barrels",
  location: "Madrid",
  price_per_day: rand(12..59),
  capacity: rand(7..31),
  user: user_one
)

Factory.create!(
  name: "Bronx Brewery",
  description: "Exceptional beers aged in oak barrels",
  location: "Soria",
  price_per_day: rand(12..59),
  capacity: rand(7..31),
  user: user_one
)

Factory.create!(
  name: "Five Wits Brewing",
  description: "Exceptional beers aged in oak barrels",
  location: "Valencia",
  price_per_day: rand(12..59),
  capacity: rand(7..31),
  user: user_one
)

Factory.create!(
  name: "Big River Grille & Brewing",
  description: "Exceptional beers aged in oak barrels",
  location: "Granada",
  price_per_day: rand(12..59),
  capacity: rand(7..31),
  user: user_one
)

Factory.create!(
  name: "Big Frog Brewing Company",
  description: "Exceptional beers aged in oak barrels",
  location: "Pamplona",
  price_per_day: rand(12..59),
  capacity: rand(7..31),
  user: user_one
)

Factory.create!(
  name: "À la fût",
  description: "Exceptional beers aged in oak barrels",
  location: "Oviedo",
  price_per_day: rand(12..59),
  capacity: rand(7..31),
  user: user_one
)
