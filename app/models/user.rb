class User < ApplicationRecord
  validates :name,  presence: true, length: { maximum: 30 }
  validates :email, presence: true, length: { maximum: 255 }, uniqueness: true,
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  before_save { email.downcase! }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  has_many :twtexts, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_twtexts, through: :favorites, source: :twtext
  mount_uploader :image, ImageUploader
end
