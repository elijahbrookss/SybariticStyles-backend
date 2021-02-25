class UsersController < ApplicationController

  def create
    user = User.new(user_params)

    if user.save then
      render json: user
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
