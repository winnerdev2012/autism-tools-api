class Api::V1::TaggingsController < ApplicationController
  before_action :set_tagging, only: [:show, :update, :destroy]
  
  def index
    @taggings = Tagging.all
    render json: @taggings
  end

  def show
    render json: @tagging
  end

  def create
    if @tagging.create(tagging_params)
      render json: @tagging
    else
      render json: {message: "Tagging not created."}
    end
  end

  def update
    if @tagging.update(tagging_params)
      render json: @tagging
    else
      render json: {message: "Tagging not updated."}
    end
  end
  
  def destroy
    render json: @tagging
  end
  
  private
  def tagging_params
    params.require(:tagging).permit(:tag_id, :board_id, :resource_id, :diet_id, :meal_id, :recipe_id, :document_id, :treatment_id, :step_id, :medication_id, :supplement_id, :playlist_id, :event_id)
  end
  
  def set_tagging
    @tagging = Tagging.find(params[:id])
  end
end
