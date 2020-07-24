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
    @user = User.new(user_params)
    if @user.save
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
    if @user.delete
      render json: { message: "User #{@user.id} deleted."}
    else
      render json: { message: "User NOT deleted."}
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :middle_name, :username, :password, :email, :phone, :address1, :address2, :address3, :address_city, :address_state, :address_zip, :age, :weight, :height, :eye_color, :hair_color, :description, :diagnosis)
  end
  
  def set_user
    @user = User.find(params[:id])
  end
end
  
