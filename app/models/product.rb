class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings

  has_one_attached :photo

  validates :name, presence: true
end
