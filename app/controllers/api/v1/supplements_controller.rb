class Api::V1::SupplementsController < ApplicationController
  before_action :set_supplement, only: [:show, :update, :destroy]
  
  def index
    @supplements = Supplement.all
    render json: @supplements
  end

  def show
    render json: @supplement
  end

  def create
    if @supplement.create(supplement_params)
      render json: @supplement
    else
      render json: {message: "Supplement not created."}
    end
  end

  def update
    if @supplement.update(supplement_params)
      render json: @supplement
    else
      render json: {message: "Supplement not updated."}
    end
  end
  
  def destroy
    render json: @supplement
  end
  
  private
  def supplement_params
    params.require(:supplement).permit(:name, :description)
  end
  
  def set_supplement
    @supplement = Supplement.find(params[:id])
  end
end
  
