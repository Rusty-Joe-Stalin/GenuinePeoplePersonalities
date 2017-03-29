class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  belongs_to :category
  mount_uploader :image, ImagesUploader
end
