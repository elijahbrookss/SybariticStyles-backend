class CommentsSerializer
  def initialize(comment_obj)
    @comment = comment_obj
  end

  def serialize
    options = {
      include: {
        user: {except: [:updated_at, :created_at, :password]},
        merchandise: {except: [:updated_at, :created_at]}
      },
      except: [:user_id, :merchandise_id]
    }
    @comment.to_json(options)
  end
end
