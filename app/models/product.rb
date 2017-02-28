class Product < ApplicationRecord
  belongs_to :user
  serialize :image
  mount_uploaders :image, ImageUploader
  has_many :posts

  has_many :favorites
  has_many :fans, through: :favorites, source: :user
end
