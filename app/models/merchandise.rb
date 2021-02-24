class Merchandise < ApplicationRecord
  belongs_to :past_order
  belongs_to :cart
end
