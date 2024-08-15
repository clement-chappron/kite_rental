class User < ApplicationRecord
  has_many :products, foreign_key: :'id_users' # un user peut avoir des products
  has_many :bookings, foreign_key: :'id_users' # un user peut avoir des réza
  has_many :reviews, foreign_key: :'id_users' # Un user peut laisser des reviews

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
