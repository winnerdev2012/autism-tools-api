class Api::V1::TagsController < ApplicationController
  before_action :set_tag, only: [:show, :update, :destroy]
  
  def index
    @tags = Tag.all
    render json: @tags
  end

  def show
    render json: @tag
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      render json: @tag
    else
      render json: {message: "Tag not created."}
    end
  end

  def update
    if @tag.update(tag_params)
      render json: @tag
    else
      render json: {message: "Tag not updated."}
    end
  end
  
  def destroy
    render json: @tag
  end
  
  private
  def tag_params
    params.require(:tag).permit(:name)
  end
  
  def set_tag
    @tag = Tag.find(params[:id])
  end
end
  
