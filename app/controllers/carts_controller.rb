class CartsController < ApplicationController

  def create
    cart = Cart.new(cart_params)
    if cart.save then
      render json: CartsSerializer.new(cart).serialize
    end
  end

  def destroy
    cart = Cart.find(params[:id])
    if cart then
      cart.destroy
    end
  end

  private

  def cart_params
    params.require(:cart).permit(:user_id, :merchandise_id)
  end

end
