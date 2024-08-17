Booking.destroy_all
puts 'All bookings destroyed'
Product.destroy_all
puts 'All products destroyed'
User.destroy_all
puts 'All users destroyed'
Review.destroy_all
puts 'All reviews destroyed'


# Seed Users

user1 = User.create!(name: "John Doe", email: "john.doe@example.com", password: "password1", password_confirmation: "password1")
user2 = User.create!(name: "Jane Smith", email: "jane.smith@example.com", password: "password2", password_confirmation: "password2")
user3 = User.create!(name: "Alice Johnson", email: "alice.johnson@example.com", password: "password3", password_confirmation: "password3")
user4 = User.create!(name: "Bob Brown", email: "bob.brown@example.com", password: "password4", password_confirmation: "password4")
user5 = User.create!(name: "Charlie Davis", email: "charlie.davis@example.com", password: "password5", password_confirmation: "password5")

puts '5 Users created'

# Seed Products

product1 = Product.create!(name: "Kite A", description: "High-quality kite for beginners.", price_per_day: 20, user_id: user1.id)
product2 = Product.create!(name: "Kite B", description: "Advanced kite with superior control.", price_per_day: 35, user_id: user2.id)
product3 = Product.create!(name: "Kite C", description: "Lightweight kite for windy conditions.", price_per_day: 25, user_id: user1.id)
product4 = Product.create!(name: "Kite D", description: "Durable kite for long-term use.", price_per_day: 30, user_id: user2.id)
product5 = Product.create!(name: "Kite E", description: "Professional-grade kite for experts.", price_per_day: 50, user_id: user2.id)

puts '5 Products created'

# Seed Bookings

booking1 = Booking.create!(start_date: DateTime.now + 1.day, end_date: DateTime.now + 3.days, confirmed: false, product_id: product1.id, user_id: user1.id)
booking2 = Booking.create!(start_date: DateTime.now + 2.days, end_date: DateTime.now + 5.days, confirmed: false, product_id: product2.id, user_id: user2.id)
booking3 = Booking.create!(start_date: DateTime.now + 3.days, end_date: DateTime.now + 6.days, confirmed: false, product_id: product3.id, user_id: user3.id)
booking4 = Booking.create!(start_date: DateTime.now + 4.days, end_date: DateTime.now + 7.days, confirmed: false, product_id: product4.id, user_id: user4.id)
booking5 = Booking.create!(start_date: DateTime.now + 5.days, end_date: DateTime.now + 8.days, confirmed: false, product_id: product5.id, user_id: user5.id)

puts '5 Bookings created'

# Seed Reviews => to be checked with team
rating1 = Review.create!(content: "Very efficient", rating: 4, user_id: user1.id, product_id: product1.id)
rating2 = Review.create!(content: "Quite good", rating: 2, user_id: user2.id, product_id: product2.id)
rating3 = Review.create!(content: "Good", rating: 1, user_id: user1.id, product_id: product3.id)
rating4 = Review.create!(content: "Good", rating: 3, user_id: user2.id, product_id: product4.id)
rating5 = Review.create!(content: "Superb", rating: 5, user_id: user2.id, product_id: product5.id)

puts '5 Reviews created'
