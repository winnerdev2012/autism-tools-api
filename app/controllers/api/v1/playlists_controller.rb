class Api::V1::PlaylistsController < ApplicationController
  before_action :set_playlist, only: [:show, :update, :destroy]
  
  def index
    @playlists = Playlist.all
    render json: @playlists
  end

  def show
    render json: @playlist
  end

  def create
    @playlist = Playlist.new(playlist_params)
    if @playlist.save
      render json: @playlist
    else
      render json: {message: "Playlist not created."}
    end
  end

  def update
    if @playlist.update(playlist_params)
      render json: @playlist
    else
      render json: {message: "Playlist not updated."}
    end
  end
  
  def destroy
    render json: @playlist
  end
  
  private
  def playlist_params
    params.require(:playlist).permit(:name, :description)
  end
  
  def set_playlist
    @playlist = Playlist.find(params[:id])
  end
end
