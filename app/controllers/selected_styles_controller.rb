class SelectedStylesController < ApplicationController

  def index
    @selected_styles = SelectedStyle.all
    render json: @selected_styles
  end

  def create
    @selected_style = SelectedStyle.create(ss_params)
    @buyer = Buyer.find(@selected_style.buyer_id)
    render json: {buyer: BuyerSerializer.new(@buyer)}
  end

  private

  def ss_params
    params.permit(:buyer_id, :style_id)
  end

end
