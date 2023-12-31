class DoctorsController < ApplicationController
  def index
    doctors = Doctor.includes(:addresses).all
    render json: doctors, include: :addresses
  end

  def new
    Doctor.new
  end

  def create
    doctor = Doctor.new(doctor_params)
    if doctor.save
      render json: doctor, include: :addresses, status: :created
    else
      render json: { error: doctor.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    user = User.find(params[:user_id])
    doctor = user.doctors.find(params[:id])
    render json: doctor, status: :ok
  end

  def destroy
    doctor = Doctor.find(params[:id])
    if doctor.destroy
      head :no_content
    else
      render json: { error: 'Failed to delete the doctor' }, status: :unprocessable_entity
    end
  end

  private

  def doctor_params
    params.require(:doctor).permit(
      :name, :email, :phone_number, :picture, :specialty, :price,
      :user_id,
      addresses_attributes: %i[country city state street]
    )
  end
end
