class Api::V1::DietMealsController < ApplicationController
  before_action :set_diet_meal, only: [:show, :update, :destroy]
  
  def index
    @diet_meals = DietMeal.all
    render json: @diet_meals
  end

  def show
    render json: @diet_meal
  end

  def create
    if @diet_meal.create(diet_meal_params)
      render json: @diet_meal
    else
      render json: {message: "DietMeal not created."}
    end
  end

  def update
    if @diet_meal.update(diet_meal_params)
      render json: @diet_meal
    else
      render json: {message: "DietMeal not updated."}
    end
  end
  
  def destroy
    render json: @diet_meal
  end
  
  private
  def diet_meal_params
    params.require(:diet_meal).permit(:name, :description)
  end
  
  def set_diet_meal
    @diet_meal = DietMeal.find(params[:id])
  end
end
  
