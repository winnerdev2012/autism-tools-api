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
    @diet_meal = DietMeal.new(diet_meal_params)
    if @diet_meal.save
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
    if @diet_meal.delete
      render json: { message: "DietMeal #{@diet_meal.id} deleted."}
    else
      render json: { message: "DietMeal NOT deleted."}
    end
  end
  
  private
  def diet_meal_params
    params.require(:diet_meal).permit(:diet_id, :meal_id)
  end
  
  def set_diet_meal
    @diet_meal = DietMeal.find(params[:id])
  end
end
  
