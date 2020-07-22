class Api::V1::BoardsController < ApplicationController
  before_action :set_board, only: [:show, :update, :destroy]
  
  def index
    @boards = Board.all
    render json: @boards
  end

  def show
    render json: @board
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      render json: @board
    else
      render json: {message: "Board not created."}
    end
  end

  def update
    if @board.update(board_params)
      render json: @board
    else
      render json: {message: "Board not updated."}
    end
  end
  
  def destroy
    if @board.delete
      render json: { message: "Board #{@board.id} deleted."}
    else
      render json: { message: "Board NOT deleted."}
    end
  end
  
  private
  def board_params
    params.require(:board).permit(:name, :description)
  end
  
  def set_board
    @board = Board.find(params[:id])
  end
end
