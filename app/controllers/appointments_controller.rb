class AppointmentsController < ApplicationController
    def new
        @appointment = Appointment.new
    end

    def create 
        @appointment = Appointment.new(appointment_params)
        @appointment.save 
        redirect_to appointment_path(@appointment)
    end

    def show 
        @appointment = Appointment.find(params[:id])
    end

    private

    def appointment_params 
        params.require(:appointment).permit(:appointment_datetime)
    end
end
