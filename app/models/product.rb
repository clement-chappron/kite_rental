class Product < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  has_one_attached :photo

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def geocode
    if address.present?
      response = Geocoder.search(address)
      puts "API Response: #{response.inspect}"
      if response.any?
        self.latitude, self.longitude = response.first.coordinates
      else
        errors.add(:address, "could not be geocoded")
      end
    end
  end

  # validates :name, presence: true
  validates :name, :address, presence: true
end
