class Api::V1::MealsController < ApplicationController
  before_action :set_meal, only: [:show, :update, :destroy]

  def index
    @meals = Meal.all
    render json: @meals
  end

  def show
    render json: @meal
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      render json: @meal
    else
      render json: {message: "Meal not created."}
    end
  end

  def update
    if @meal.update(meal_params)
      render json: @meal
    else
      render json: {message: "Meal not updated."}
    end
  end

  def destroy
    render json: @meal
  end

  private
  def meal_params
    params.require(:meal).permit(:name, :description)
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end
end  
