class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :shipping_address, presence: true
  validates :email, presence: true
  validates :shipping_address, presence: true
  # validates :province_id, presence: true

  belongs_to :province
end
