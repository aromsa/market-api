class FavoriteDesignersController < ApplicationController

  def index
    @favorite_designers = FavoriteDesigner.all
    render json: @favorite_designers
  end

  def destroy
    @favorite_designers = FavoriteDesigner.find(params[:id])
    @favorite_designers.destroy
   end



end
