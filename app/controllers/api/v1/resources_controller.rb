class Api::V1::ResourcesController < ApplicationController
  before_action :set_resource, only: [:show, :update, :destroy]
    
  def index
    @resources = Resource.all
    render json: @resources
  end

  def show
    render json: @resource
  end

  def create
    if @resource.create(resource_params)
      render json: @resource
    else
      render json: {message: "Resource not created."}
    end
  end

  def update
    if @resource.update(resource_params)
      render json: @resource
    else
      render json: {message: "Resource not updated."}
    end
  end

  def destroy
    render json: @resource
  end

  private
    def resource_params
      params.require(:resource).permit(:name, :description)
    end

    def set_resource
      @resource = Resource.find(params[:id])
    end
end
