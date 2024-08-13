Booking.destroy_all
puts 'All bookings destroyed'
Product.destroy_all
puts 'All products destroyed'
User.destroy_all
puts 'All users destroyed'

# Seed Users

User.create!([
  { id: 1, name: "John Doe", email: "john.doe@example.com", password: "password1", password_confirmation: "password1" },
  { id: 2, name: "Jane Smith", email: "jane.smith@example.com", password: "password2", password_confirmation: "password2" },
  { id: 3, name: "Alice Johnson", email: "alice.johnson@example.com", password: "password3", password_confirmation: "password3" },
  { id: 4, name: "Bob Brown", email: "bob.brown@example.com", password: "password4", password_confirmation: "password4" },
  { id: 5, name: "Charlie Davis", email: "charlie.davis@example.com", password: "password5", password_confirmation: "password5" }
])
puts '5 Users created'

# Seed Products

Product.create([
  { id: 1, name: "Kite A", description: "High-quality kite for beginners.", price_per_day: 20, user_id: 1 },
  { id: 2, name: "Kite B", description: "Advanced kite with superior control.", price_per_day: 35, user_id: 2 },
  { id: 3, name: "Kite C", description: "Lightweight kite for windy conditions.", price_per_day: 25, user_id: 1 },
  { id: 4, name: "Kite D", description: "Durable kite for long-term use.", price_per_day: 30, user_id: 2 },
  { id: 5, name: "Kite E", description: "Professional-grade kite for experts.", price_per_day: 50, user_id: 2 }
])
puts '5 Products created'

# Seed Bookings
Booking.create([
  { id: 1, start_date: DateTime.now + 1.day, end_date: DateTime.now + 3.days, confirmed: false, product_id: 1, user_id: 1 },
  { id: 2, start_date: DateTime.now + 2.days, end_date: DateTime.now + 5.days, confirmed: false, product_id: 2, user_id: 2 },
  { id: 3, start_date: DateTime.now + 3.days, end_date: DateTime.now + 6.days, confirmed: false, product_id: 3, user_id: 3 },
  { id: 4, start_date: DateTime.now + 4.days, end_date: DateTime.now + 7.days, confirmed: false, product_id: 4, user_id: 4 },
  { id: 5, start_date: DateTime.now + 5.days, end_date: DateTime.now + 8.days, confirmed: false, product_id: 5, user_id: 5 }
])
puts '5 Bookings created'
