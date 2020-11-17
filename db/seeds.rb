# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(email:"vincentrobert.vrbt@gmail.com", password: "password", description: "I would like to rent a car", location: "London")
10.times do
  Car.create!(model: "205", brand: "Peugeot", price: 10, description: "This a vintage car", title: Faker::Name.name, user: user)
end
