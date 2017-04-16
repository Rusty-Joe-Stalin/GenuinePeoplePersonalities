class Customer < ApplicationRecord
  validates :email, presence: true
  # validates :province_id, presence: true
  belongs_to :province
end
