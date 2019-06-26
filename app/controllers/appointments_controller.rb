class AppointmentsController < ApplicationController

  def new
    @appointment = Appointment.new
  end

  def create 
    binding.pry
    appointment = Appointment.create(appointment_params)
    redirect_to appointment_path(appointment)
  end
  
  def show
    @appointment = Appointment.find(params[:id])
    @doctor = @appointment.doctor
    @patient = @appointment.patient
  end

  private

  def appointment_params
    #binding.pry
    params.require(:appointment).permit(
      :datetime,
      doctors_attributes: [
        :name,
        :department
      ],
      patients_attributes: [
        :name,
        :age
      ]
    )
  end

end
