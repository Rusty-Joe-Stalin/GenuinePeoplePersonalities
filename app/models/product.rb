class Product < ApplicationRecord
   validates :name, presence: true
   validates :desciption, presence: true
   validates :price, presence: true
end
