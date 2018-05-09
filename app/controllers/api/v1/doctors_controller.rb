class Api::V1::DoctorsController < ApplicationController
	before_action :set_doctor, only: [:show, :edit, :update, :destroy]
	
	def index
    @doctors = Doctor.all
    json_response(@doctors)
  end

  def show
  	json_response(@doctor)
  end

  def create
    @doctor = Doctor.create!(doctor_params)
    json_response(@doctor, :created)
  end

  def update
    @doctor.update(doctor_params)
    head :no_content
  end

  def destroy
    @doctor.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_params
      params.require(:doctor).permit(:name, :phone, :specialization)
    end

  
end
