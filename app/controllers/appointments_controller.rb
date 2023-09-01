class AppointmentsController < ApplicationController
  before_action :set_appointment, only: %i[show update destroy]

  def index
    appointments = Appointment.includes(:user, :doctor).all
    render json: appointments, include: %i[user doctor]
  end

  def show
    render json: @appointment, include: %i[user doctor]
  end

  def create
    appointment = Appointment.new(appointment_params)
    puts "Appointment Params: #{appointment_params.inspect}"
    puts "New Appointment: #{appointment.inspect}"
    if appointment.save
      render json: appointment, include: %i[user doctor], status: :created
    else
      render json: { error: appointment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    if @appointment.update(appointment_params)
      render json: @appointment, include: %i[user doctor]
    else
      render json: { error: @appointment.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @appointment.destroy
    head :no_content
  end

  private

  def set_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit(:appointment_date, :user_id, :doctor_id, :city)
  end
end
