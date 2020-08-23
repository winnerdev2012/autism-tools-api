class Api::V1::TreatmentsController < ApplicationController
  before_action :set_treatment, only: [:show, :update, :destroy]
  
  def index
    @treatments = Treatment.all
    render json: @treatments
  end

  def show
    render json: @treatment
  end

  def create
    @treatment = Treatment.new(treatment_params)
    if @treatment.save
      render json: @treatment
    else
      render json: {message: "Treatment not created."}
    end
  end

  def update
    if @treatment.update(treatment_params)
      render json: @treatment
    else
      render json: {message: "Treatment not updated."}
    end
  end
  
  def destroy
    if @treatment.destroy
      render json: { message: "Treatment #{@treatment.id} destroyed."}
    else
      render json: { message: "Treatment NOT destroyed."}
    end
  end
  
  private
  def treatment_params
    params.require(:treatment).permit(:name, :description, :instructions)
  end
  
  def set_treatment
    @treatment = Treatment.find(params[:id])
  end
end
  
