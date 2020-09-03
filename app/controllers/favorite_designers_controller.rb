class FavoriteDesignersController < ApplicationController

  def index
    @favorite_designers = FavoriteDesigner.all
    render json: @favorite_designers
  end

  def destroy
    @favorite_designer = FavoriteDesigner.find(params[:id])
    @buyer = Buyer.find(@favorite_designer.buyer_id)
    @favorite_designer.destroy
    render json: {buyer: BuyerSerializer.new(@buyer)}
   end

  def create
    @favorite_designer = FavoriteDesigner.create(fav_params)
    @buyer = Buyer.find(@favorite_designer.buyer_id)
    render json: {buyer: BuyerSerializer.new(@buyer)}
  end

  private

  def fav_params
    params.permit(:buyer_id, :designer_id)
  end

end
