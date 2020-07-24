class Api::V1::PlaylistResourcesController < ApplicationController
  before_action :set_playlist_resource, only: [:show, :update, :destroy]
  
  def index
    @playlist_resources = PlaylistResource.all
    render json: @playlist_resources
  end

  def show
    render json: @playlist_resource
  end

  def create
    @playlist_resource = PlaylistResource.new(playlist_resource_params)
    if @playlist_resource.save
      render json: @playlist_resource
    else
      render json: {message: "PlaylistResource not created."}
    end
  end

  def update
    if @playlist_resource.update(playlist_resource_params)
      render json: @playlist_resource
    else
      render json: {message: "PlaylistResource not updated."}
    end
  end
  
  def destroy
    render json: @playlist_resource
  end
  
  private
  def playlist_resource_params
    params.require(:playlist_resource).permit(:playlist_id, :resource_id)
  end
  
  def set_playlist_resource
    @playlist_resource = PlaylistResource.find(params[:id])
  end
end
  
