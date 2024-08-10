class User < ApplicationRecord
  has_many :products
  has_many :bookings

  # affiche tous les produits qu'un utilisateur a loué
  # has_many :products, through: :bookings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
