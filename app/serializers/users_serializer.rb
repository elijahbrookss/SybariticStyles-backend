class UsersSerializer
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
          include: {
            merchandise: {except: [:updated_at, :created_at]},
            user: {except: [:updated_at, :created_at, :password]}
          },
          except: [:created_at, :updated_at, :merchandise_id, :user_id]
        },
        comments: {
          include: {
            user: {except: [:updated_at, :created_at, :password]},
            merchandise: {except: [:updated_at, :created_at]}
          },
          except: [:created_at, :updated_at, :user_id, :merchandise_id]
        }
      },
      except: [:password, :updated_at, :created_at]
    }
    @user.to_json(options)
  end
end
