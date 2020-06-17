class Api::V1::BoardResourcesController < ApplicationController
  before_action :set_board_resource, only: [:show, :update, :destroy]

  def index
    @board_resources = BoardResource.all
    render json: @board_resources
  end

  def show
    render json: @board_resource
  end

  def create
    if @board_resource.create(board_resource_params)
      render json: @board_resource
    else
      render json: {message: "BoardResource not created."}
    end
  end

  def update
    if @board_resource.update(board_resource_params)
      render json: @board_resource
    else
      render json: {message: "BoardResource not updated."}
    end
  end

  def destroy
    render json: @board_resource
  end

  private
  def board_resource_params
    params.require(:board_resource).permit(:board_id, :resource_id)
  end

  def set_board_resource
    @board_resource = BoardResource.find(params[:id])
  end
end
