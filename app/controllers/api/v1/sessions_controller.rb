class Api::V1::SessionsController < ApplicationController
  
  def create
    @user = User.create(user_params)
  end

  def destroy
  
  end

  private

  def user_params
    params.require(:user).permit( :user_name, :email, :password)
  end
end
