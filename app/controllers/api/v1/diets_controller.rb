class Api::V1::DietsController < ApplicationController
  before_action :set_diet, only: [:show, :update, :destroy]

  def index
    @diets = Diet.all
    render json: @diets
  end

  def show
    render json: @diet
  end

  def create
    if @diet.create(diet_params)
      render json: @diet
    else
      render json: {message: "Diet not created."}
    end
  end

  def update
    if @diet.update(diet_params)
      render json: @diet
    else
      render json: {message: "Diet not updated."}
    end
  end

  def destroy
    render json: @diet
  end

  private
  def diet_params
    params.require(:diet).permit(:name, :description, :instructions)
  end

  def set_diet
    @diet = Diet.find(params[:id])
  end
end


