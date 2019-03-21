# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# movies = Product.new({name: "Jupiter Ascending", price: 1, image_url: "https://s-i.huffpost.com/gen/2583438/images/n-JUPITER-ASCENDING-628x314.jpg",description: "Jupiter Ascending Up Uranus"}) 
# movies.save
# food1 = Product.new({name: "Squid Tentacles", price: 1000, image_url: "https://static01.nyt.com/newsgraphics/2014/03/31/Eat-squid/assets/06-eat_squid-custom.jpg", description: "Superb Squishy Squid Tentacle Salad"})
# food1.save
# Product.create!({name: "The Beast", price: 4, description: "WTF", instock: "in_stock", user_id: 3, supplier_id: 1})

# supplier1 = Supplier.new({name: "How Did This Get Made", email: "howdidthisgetmade@gmail.com", phone_number: "773-999-0000"})
# supplier1.save
# supplier2 = Supplier.new({name: "Squid Man", email: "squidman@aol.com", phone_number: "666-66-6666"})
# supplier2.save

# images = Image.new({url: "http://www.freshfishmumbai.com/media/catalog/product/cache/1/thumbnail/600x/17f82f742ffe127f42dca9de82fb58b1/s/q/squids.jpg", product_id: 3})
# images.save
# images = Image.new(url:"http://www.irishnews.com/picturesarchive/irishnews/irishnews/2017/06/20/190012629-54e87f62-ddeb-40fa-a10e-26300edfc9a0.jpg", product_id: 3)
# images.save
# images = Image.new(url: "https://www.gotscience.org/wp-content/uploads/2018/04/squid_shell-copy.png", product_id: 3)
# images.save

# Image.create!(url:"https://s-i.huffpost.com/gen/2583438/images/n-JUPITER-ASCENDING-628x314.jpg", product_id:13)
# Image.create!(url:"https://images-na.ssl-images-amazon.com/images/I/51pZgok0YnL._SY445_.jpg", product_id:8)
# Image.create!(url:"https://upload.wikimedia.org/wikipedia/en/thumb/0/04/DragonBladefilm.jpg/220px-DragonBladefilm.jpg", product_id:10 )
# Image.create!(url:"https://upload.wikimedia.org/wikipedia/en/thumb/4/43/Butterflyeffect_poster.jpg/220px-Butterflyeffect_poster.jpg", product_id:12)

Category.create!([{name: "squids"}])
  # Category.create!([name: "movies"])
  
