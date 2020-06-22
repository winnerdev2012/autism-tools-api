class Api::V1::SessionsController < ApplicationController
  
  def create
    user = User.find_by_email(params[:email])
    
    if user&.valid_password?(params[:password])
      render json: user.as_json(only: [:id, :email, :authentication_token]), status: :created
    else
      head(:unauthorized)
    end
  end

  def destroy
    user = User.find_by_email(params[:email])
        
    if user&.valid_password?(params[:password])
      render json: {
        message: "User #{params[:email]} signed out.",
        user_id: user.id,
        authentication_token: user.authentication_token
      }

    else
      head(:unauthorized)
    end
  end
  
end
