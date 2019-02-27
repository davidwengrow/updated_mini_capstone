# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movies = Product.new({name: "Jupiter Ascending", price: ".20", image_url: "https://s-i.huffpost.com/gen/2583438/images/n-JUPITER-ASCENDING-628x314.jpg",description: "Jupiter Ascending Up Uranus"}) 
movies.save
