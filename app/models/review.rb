class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product
  # validates :content, presence: true # user doit obligatoirement remplir la description
  validates :rating, presence: true, numericality: { only_integer: true, in: 1..5 } # user doit obligatoirement mettre une note de 1 à 5
  validates :content, presence: true
  validates :product_id, presence: true
  validates :user_id, presence: true
end
