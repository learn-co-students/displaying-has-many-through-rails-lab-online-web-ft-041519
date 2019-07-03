class PatientsController < ApplicationController
    def index
        @patients = Patient.all
    end

    def show
        set_patient
    end

    private

    def set_patient
        @patient = Patient.find_by(id: params[:id])
    end
end
