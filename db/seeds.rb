puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

Product.create!({
  name:  'Men\'s Classy shirt',
  description: 'Cotton',
  image: open_asset('cotton kurti.png'),
  quantity: 10,
  price: 64.99
})

Product.create!({
  name:  'Women\'s Zebra pants',
  description: 'Blue Shirt',
  image: open_asset('blue t-shirt.png'),
  quantity: 18,
  price: 124.99
})


