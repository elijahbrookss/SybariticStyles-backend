class UserSerializer
  def initialize(user_obj)
    @user = user_obj
  end

  def serialize
    options = {
      include: {
        merchandises: {
          except: [:updated_at, :created_at]
        },
        past_orders: {
          include: [:merchandises]
        }
      },
      except: [:password, :updated_at, :created_at]
    }
    @user.to_json(options)
  end
end
