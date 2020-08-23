class Api::V1::StepsController < ApplicationController
  before_action :set_step, only: [:show, :update, :destroy]
  
  def index
    @steps = Step.all
    render json: @steps
  end

  def show
    render json: @step
  end

  def create
    @step = Step.new(step_params)
    if @step.save
      render json: @step
    else
      render json: {message: "Step not created."}
    end
  end

  def update
    if @step.update(step_params)
      render json: @step
    else
      render json: {message: "Step not updated."}
    end
  end
  
  def destroy
    if @step.destroy
      render json: { message: "Step #{@step.id} destroyed."}
    else
      render json: { message: "Step NOT destroyed."}
    end
  end
  
  private
  def step_params
    params.require(:step).permit(:treatment_id, :step_number, :name, :description, :instructions, :medication_id, :supplement_id, :dose_qty, :dose_unit, :dose_description, :dose_start, :dose_end)
  end
  
  def set_step
    @step = Step.find(params[:id])
  end
end
  
