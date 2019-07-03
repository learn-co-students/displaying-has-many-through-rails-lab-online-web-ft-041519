class AppointmentsController < ApplicationController
    def show
        set_app
    end

    private

    def set_app
        @appointment = Appointment.find_by(id: params[:id])
    end
end
