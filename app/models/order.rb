class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items
  before_validation :set_order_status
  before_save :update_subtotal

  def subtotal
    #  removed ': 0 ' from line cause of syntax errors
  order_items.collect{|oi| oi.valid? ? (oi.quantity.to_i * oi.unit_price.to_f) : 0}.sum
  end

  private
  def set_order_status
    self.order_status_id = 1 if self.order_status_id.nil?
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
