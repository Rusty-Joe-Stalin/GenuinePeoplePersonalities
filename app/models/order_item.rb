class OrderItem < ApplicationRecord
  belongs_to :product
  belongs_to :order

  validates :quantity, presence: true
  validate :product_present
  validate :order_present

  before_save :finalize

  def unit_price
    if persisted?
      self[:unit_price]
    else
      product.price
    end
  end

  def total_price
    unit_price * quantity.to_i
  end

  private

  def product_present
    if product.nil?
      errors.add(:product, 'is not valid or not active.')
    end
  end
  def order_present
    if order.nil?
      errors.add(:order, 'is not a valid order.')
    end
  end

  def finalize
    self[:unit_price] = unit_price
    self[:total_price] = quantity.to_i * self[:unit_price]
  end
end
