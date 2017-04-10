class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  belongs_to :category
  mount_uploader :image, ImagesUploader
  # added from the tutorial
  has_many :order_items
  # default_scope {where(active: true )}
end
