class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]
  
  def index
    @users = User.all
    render json: @users
  end

  def show
    render json: @user
  end

  def create
    if @user.create(user_params)
      render json: @user
    else
      render json: {message: "User not created."}
    end
  end

  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: {message: "User not updated."}
    end
  end
  
  def destroy
    render json: @user
  end
  
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :middle_name, :username, :password, :email, :phone, :address1, :address2, :address3, :address_city, :address_state, :address_zip, :age, :weight, :height, :eyes_color, :hair_color, :description, :diagnosis)
  end
  
  def set_user
    @user = User.find(params[:id])
  end
end
  
