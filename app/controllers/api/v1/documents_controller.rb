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
    @document = Document.new(document_params)
    if @document.save
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
    if @document.delete
      render json: { message: "Document #{@document.id} deleted."}
    else
      render json: { message: "Document NOT deleted."}
    end
  end
  
  private
  def document_params
    params.require(:document).permit(:name, :description, :instructions, :format, :location, :user_id)
  end
  
  def set_document
    @document = Document.find(params[:id])
  end
end
  
