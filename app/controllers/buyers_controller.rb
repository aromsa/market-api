class BuyersController < ApplicationController

  def index
    @buyers = Buyer.all
    render json: @buyers
  end

  # def show
  #   @user = User.find(params[:id])
  # end

  # def new
  #   @user = User.new
  # end

  # def create
  #   user = User.create(user_params)
  #   session[:user_id] = user.id
  #   redirect_to user_path(user)
  # end

  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   user = User.find(params[:id])
  #   user.update(user_params)
  #   redirect_to user_path(user.id)
  # end

  # def create
  #   @buyer = Buyer.create(buyer_params())
  #   if @buyer.valid?
  #     render json: @buyer, status: 201
  #   else
  #     render json: {message: "Failed to create"}, status: 403
  #   end
  # end


  def login
    @buyer = Buyer.find_by(username: params[:username])
    if @buyer && @buyer.authenticate(params[:password])
      wristband = encode_token({buyer_id: @buyer.id})
      render json: {buyer: BuyerSerializer.new(@buyer), token: wristband}
    else
      render json: {message: "Incorrect username or password"}
    end
  end

  

  private

  def buyer_params
    params.permit(:username, :password)
  end

end
