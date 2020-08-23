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
    @resource = Resource.new(resource_params)
    if @resource.save
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
    if @resource.destroy
      render json: { message: "Resource #{@resource.id} destroyed."}
    else
      render json: { message: "Resource NOT destroyed."}
    end
  end

  private
    def resource_params
      params.require(:resource).permit(:name, :description, :format, :location)
    end

    def set_resource
      @resource = Resource.find(params[:id])
    end
end
