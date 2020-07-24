class Api::V1::MedicationsController < ApplicationController
  before_action :set_medication, only: [:show, :update, :destroy]
  
  def index
    @medications = Medication.all
    render json: @medications
  end

  def show
    render json: @medication
  end

  def create
    @medication = Medication.new(medication_params)
    if @medication.save
      render json: @medication
    else
      render json: {message: "Medication not created."}
    end
  end

  def update
    if @medication.update(medication_params)
      render json: @medication
    else
      render json: {message: "Medication not updated."}
    end
  end
  
  def destroy
    if @medication.delete
      render json: { message: "Medication #{@medication.id} deleted."}
    else
      render json: { message: "Medication NOT deleted."}
    end
  end
  
  private
  def medication_params
    params.require(:medication).permit(:name, :description)
  end
  
  def set_medication
    @medication = Medication.find(params[:id])
  end
end
  
