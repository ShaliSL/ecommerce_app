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

##USERS

User.destroy_all

User.create!({
  email: 'you@test.com',
  password: '$2a$10$yNB98OCdmMOM3fLuQKMPZ.LIOLiHVJJACwwC/Bb9qe5njgEnavlGO',
  firstname: 'David',
  lastname: 'Davidsion',
  created_at: '2017-07-08 21:41:44.563279',
  updated_at: '2017-07-08 21:41:44.563279'
})

User.create!({
  email: 'bill@whitehouse.com',
  password: '$2a$10$yNB98OCdmMOM3fLuQKMPZ.LIOLiHVJJACwwC/Bb9qe5njgEnavlGO',
  firstname: 'Bill',
  lastname: 'Clonton',
  created_at: '2017-07-08 21:41:44.563279',
  updated_at: '2017-07-08 21:41:44.563279'
})

##CONTACTUS

Contact.destroy_all

Contact.create!({
  name:  'Men\'s Classy shirt',
  address: 'Cotton',
  message: 'hi'
})

Contact.create!({
  name:  'Women\'s Zebra pants',
  description: 'Blue Shirt',
  message: 'hii'
})

