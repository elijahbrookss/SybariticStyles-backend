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

  end

  def destroy

  end


  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
