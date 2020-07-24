class Api::V1::EventsController < ApplicationController
  before_action :set_event, only: [:show, :update, :destroy]
  
  def index
    @events = Event.all
    render json: @events
  end

  def show
    render json: @event
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      render json: @event
    else
      render json: {message: "Event not created."}
    end
  end

  def update
    if @event.update(event_params)
      render json: @event
    else
      render json: {message: "Event not updated."}
    end
  end
  
  def destroy
    if @event.delete
      render json: { message: "Event #{@event.id} deleted."}
    else
      render json: { message: "Event NOT deleted."}
    end
  end
  
  private
  def event_params
    params.require(:event).permit(:name, :description, :start_time, :end_time, :duration)
  end
  
  def set_event
    @event = Event.find(params[:id])
  end
end
