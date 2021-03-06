class User < ApplicationRecord
  mount_uploader :icon, IconUploader
validates :name, presence: true, length: {maximum: 30}
validates :email, presence: true, length: {maximum: 255},   format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
validates :icon, presence: true
before_validation { email.downcase! }

has_secure_password

validates :password, presence: true, length: {minimum: 6}
has_many :favorites, dependent: :destroy
has_many :favorite_images, through: :favorites, source: :image
end
