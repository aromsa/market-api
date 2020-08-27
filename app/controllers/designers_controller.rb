class DesignersController < ApplicationController

  def index
    @designers = Designer.all
    render json: @designers
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

  def create
    @designer = Designer.create(designer_params())
    if @designer.valid?
      render json: @designer, status: 201
    else
      render json: {message: "Failed to create"}, status: 403
    end
  end

  
  def login
    @designer = Designer.find_by(username: params[:username])
    if @designer && @designer.authenticate(params[:password])
      render json: @designer
    else
      render json: {message: "Incorrect username or password"}
    end
  end

  

  private

  def designer_params
    params.permit(:username, :password)
  end


end
