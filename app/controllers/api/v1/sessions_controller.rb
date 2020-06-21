class Api::V1::SessionsController < ApplicationController
  
  def create
    user = User.find_by_email(params[:email])
    
    if user&.valid_password?(params[:password])
      render json: user.as_json(only: [:id, :email]), status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy
    user = User.find_by_email(params[:email])
        
    if user&.valid_password?(params[:password])
      render json: {message: "User #{params[:email]} session deleted"}
    else
      head(:unauthorized)
    end
  end

  private

  def user_params
    params.require(:user).permit( :user_name, :email, :password)
  end
end
