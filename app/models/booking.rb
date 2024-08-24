class Booking < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true

  def total_price
    (((end_date - start_date) / 1.day).to_i + 1) * product.price_per_day
  end
end

