class Bid < ApplicationRecord
#  belongs_to :user
  belongs_to :product

  validates :bid_price, numericality: {only_integer: true}
  validates :product_id, uniqueness: true
end
