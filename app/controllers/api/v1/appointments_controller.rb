class Api::V1::AppointmentsController < ApplicationController
  before_action :set_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = Appointment.all
    json_response(@appointments)
  end

  def show
  	json_response(@appointment)
  end

  def create
    @appointment = Appointment.create!(appointment_params)
    json_response(@appointment, :created)
  end

  def update
    @appointment.update(appointment_params)
    head :no_content
  end

  def destroy
    @appointment.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @appointment = Appointment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:appointment).permit(:doctor_id, :patient_id, :diseases, :appointment_date)
    end
end
