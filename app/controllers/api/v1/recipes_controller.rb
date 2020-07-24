class Api::V1::RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]
  
  def index
    @recipes = Recipe.all
    render json: @recipes
  end

  def show
    render json: @recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      render json: @recipe
    else
      render json: {message: "Recipe not created."}
    end
  end

  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: {message: "Recipe not updated."}
    end
  end
  
  def destroy
    if @recipe.delete
      render json: { message: "Recipe #{@recipe.id} deleted."}
    else
      render json: { message: "Recipe NOT deleted."}
    end
  end
  
  private
  def recipe_params
    params.require(:recipe).permit(:name, :description, :instructions)
  end
  
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
