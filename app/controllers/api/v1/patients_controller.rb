class Api::V1::PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all
    json_response(@patients)
  end

  def show
  	json_response(@patient)
  end

  def create
    @patient = Patient.create!(patient_params)
    json_response(@patient, :created)
  end

  def update
  	byebug
    @patient.update(patient_params)
    head :no_content
  end

  def destroy
    @patient.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_patient
      @patient = Patient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def patient_params
      params.require(:patient).permit(:name, :phone)
    end
end
