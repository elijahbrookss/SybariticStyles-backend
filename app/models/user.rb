class User < ApplicationRecord
  has_many :carts
  has_many :merchandises, through: :carts

  has_many :comments
end
