class PastOrdersController < ApplicationController
  before_action :get_past_order, only: [:show, :destroy, :update]

  def index
    past_orders = PastOrder.all
    render json: past_orders
  end

  def create
    past_order = PastOrder.new(past_order_params)

    if past_order.save
      render json: past_order
    end
  end

  def destroy
    if @past_order
      @past_order.destroy
    end
  end

  def update
    if @past_order
      @past_order.update(past_order_params)
    end
  end

  def show
    if @past_order
      render json: @past_order
    end
  end


  private

  def get_past_order
    @past_order = PastOrder.find(params[:id])
  end

  def past_order_params
    params.require(:past_order).permit(:user_id, :title, :merchandise_id)
  end

end
