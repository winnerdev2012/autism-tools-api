class Api::V1::BoardResourcesController < ApplicationController

  def index
    @board_resources = BoardResource.all
    render json: @board_resources
  end
end
