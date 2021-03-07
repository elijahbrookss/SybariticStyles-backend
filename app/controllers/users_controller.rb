class UsersController < ApplicationController

  def index
    render json: UsersSerializer.new(User.all).serialize
  end

  def create
    user = User.new(user_params)
    if user.save then
      render json: UsersSerializer.new(user).serialize
    end
  end

  def show
    user = User.find(params[:id])
    if user then
      render json: UsersSerializer.new(user).serialize
    end
  end

  def destroy
    user = User.find(params[:id])
    if user then
      destroy_user_associations(user)
      user.destroy
    end
  end

  private
  
  def destroy_user_associations(user)
    user.comments.destroy_all
    user.carts.destroy_all
    user.past_orders.destroy_all
  end

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
