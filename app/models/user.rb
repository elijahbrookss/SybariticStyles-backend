class User < ApplicationRecord
  has_many :carts
  has_many :merchandises, through: :carts

  has_many :comments
  has_many :past_orders
end
