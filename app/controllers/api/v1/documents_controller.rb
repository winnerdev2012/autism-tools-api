class Api::V1::DocumentsController < ApplicationController
  before_action :set_document, only: [:show, :update, :destroy]
  
  def index
    @documents = Document.all
    render json: @documents
  end

  def show
    render json: @document
  end

  def create
    if @document.create(document_params)
      render json: @document
    else
      render json: {message: "Document not created."}
    end
  end

  def update
    if @document.update(document_params)
      render json: @document
    else
      render json: {message: "Document not updated."}
    end
  end
  
  def destroy
    render json: @document
  end
  
  private
  def document_params
    params.require(:document).permit(:name, :description, :instructions, :format, :location, :user_id)
  end
  
  def set_document
    @document = Document.find(params[:id])
  end
end
  
