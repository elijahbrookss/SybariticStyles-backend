class CommentsController < ApplicationController
  before_action :get_comment, only: [:destroy, :update]

  def index
    comments = Comment.all
    render json: comments
  end

  def create
    comment = Comment.new(comments_params)
    if comment.save
      render json: CommentsSerializer(comment).serialize
    end
  end

  def destroy
    if @comment
      @comment.destroy
    end
  end

  def update
    if @comment
      @comment.update(comments_params)
      render json: CommentsSerializer(@comment).serialize
    end
  end

  private

  def get_comment
    @comment = Comment.find(params[:id])
  end

  def comments_params
    params.require(:comment).permit(:user_id, :merchandise_id, :content)
  end
end
