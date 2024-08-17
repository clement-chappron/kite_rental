class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user

  def total_price
    ((end_date - start_date) / 1.day).to_i * product.price_per_day
  end
end
