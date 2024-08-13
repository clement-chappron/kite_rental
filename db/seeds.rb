# Seed Users
# User.create([
#   { name: "John Doe", email: "john.doe@example.com", encrypted_password: "password1" },
#   { name: "Jane Smith", email: "jane.smith@example.com", encrypted_password: "password2" },
#   { name: "Alice Johnson", email: "alice.johnson@example.com", encrypted_password: "password3" },
#   { name: "Bob Brown", email: "bob.brown@example.com", encrypted_password: "password4" },
#   { name: "Charlie Davis", email: "charlie.davis@example.com", encrypted_password: "password5" }
# ])

# Seed Products
Product.create([
  { name: "Kite A", description: "High-quality kite for beginners.", price_per_day: 20, user_id: 2 },
  { name: "Kite B", description: "Advanced kite with superior control.", price_per_day: 35, user_id: 2 },
  { name: "Kite C", description: "Lightweight kite for windy conditions.", price_per_day: 25, user_id: 2 },
  { name: "Kite D", description: "Durable kite for long-term use.", price_per_day: 30, user_id: 2 },
  { name: "Kite E", description: "Professional-grade kite for experts.", price_per_day: 50, user_id: 2 }
])

# Seed Bookings
# Booking.create([
#   { start_date: DateTime.now + 1.day, end_date: DateTime.now + 3.days, confirmed: false, product_id: 1, user_id: 1 },
#   { start_date: DateTime.now + 2.days, end_date: DateTime.now + 5.days, confirmed: false, product_id: 2, user_id: 2 },
#   { start_date: DateTime.now + 3.days, end_date: DateTime.now + 6.days, confirmed: false, product_id: 3, user_id: 3 },
#   { start_date: DateTime.now + 4.days, end_date: DateTime.now + 7.days, confirmed: false, product_id: 4, user_id: 4 },
#   { start_date: DateTime.now + 5.days, end_date: DateTime.now + 8.days, confirmed: false, product_id: 5, user_id: 5 }
# ])
