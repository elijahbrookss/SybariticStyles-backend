class MerchandisesController < ApplicationController
  before_action :get_merchandise, only: [:destroy, :show, :update]

  def index
    merchandises = Merchandise.all
    render json: merchandises
  end

  def create
    merchandise = Merchandise.new(merchandise_params)
    if merchandise.save
      render json: merchandise
    end
  end

  def destroy
    if @merchandise
      destroy_merchandise_associations
      @merchandise.destroy
    end
  end

  def show
    if @merchandise
      render json: @merchandise
    end
  end

  def update
    if @merchandise
      @merchandise.update(merchandise_params)
    end
  end

  private

  def get_merchandise
    @merchandise = Merchandise.find(params[:id])
  end

  def destroy_merchandise_associations
    @merchandise.comments.destroy_all
  end

  def merchandise_params
    params.require(:merchandise).permit(:name, :description, :img_url)
  end
end
