class Api::V1::EventUsersController < ApplicationController
  before_action :set_event_user, only: [:show, :update, :destroy]
  
  def index
    @event_users = EventUser.all
    render json: @event_users
  end

  def show
    render json: @event_user
  end

  def create
    @event_user = EventUser.new(event_user_params)
    if @event_user.save
      render json: @event_user
    else
      render json: {message: "EventUser not created."}
    end
  end

  def update
    if @event_user.update(event_user_params)
      render json: @event_user
    else
      render json: {message: "EventUser not updated."}
    end
  end
  
  def destroy
    render json: @event_user
  end
  
  private
  def event_user_params
    params.require(:event_user).permit(:event_id, :user_id)
  end
  
  def set_event_user
    @event_user = EventUser.find(params[:id])
  end
end
