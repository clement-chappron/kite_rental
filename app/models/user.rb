class User < ApplicationRecord
  has_many :products, foreign_key: :user_id # un user peut avoir des products
  has_many :bookings, foreign_key: :user_id # un user peut avoir des réza
  has_many :reviews, foreign_key: :user_id # Un user peut laisser des reviews
  has_one_attached :profile_picture

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
