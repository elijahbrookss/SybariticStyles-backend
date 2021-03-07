class PastOrderSerializer
  def initialize(past_order_obj)
    @past_order = past_order_obj
  end

  def serialize
    options = {
      include: {
        merchandise: {except: [:updated_at, :created_at]},
        user: {except: [:updated_at, :created_at, :password]},
      },
      except: [:created_at, :updated_at, :merchandise_id, :user_id]
    }
    @past_order.to_json(options)
  end
end
