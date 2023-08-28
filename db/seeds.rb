# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create(username: "John Doe", email: "johndoe@yahoo.com", encrypted_password: "pass123")

address1 = Address.create(country: "United State", city: "Springfield", state: "IL", street: "206 Bolman Court")
address2 = Address.create(country: "United State", city: "Kissimmee", state: "FL", street: "1216 Stoneybrook Road")

doctor1 = Doctor.create(name: "Wendy A. Dandrea", email: "Dandrea@gmail.com", phone_number: "123-456-7890", picture: "https://img.freepik.com/free-photo/two-african-american-pharmacist-working-drugstore-hospital-pharmacy-african-healthcare_627829-13783.jpg?size=626&ext=jpg&ga=GA1.2.1655798479.1685913855&semt=sph", specialty: "Neurology", price: 500.0, user_id: user1)

doctor2 = Doctor.create(name: "James R. Gatlin", email: "Gatlin@gmail.com", phone_number: "987-654-3210", picture: "https://img.freepik.com/free-photo/smiling-doctor-with-strethoscope-isolated-grey_651396-974.jpg?size=626&ext=jpg&ga=GA1.2.1655798479.1685913855&semt=sph", specialty: "Surgery", price: 800.0, user_id: user1)

doctor_address1 = DoctorAddress.create(doctor_id: doctor1, address_id: address1)
doctor_address2 = DoctorAddress.create(doctor_id: doctor2, address_id: address2)

appointment1 = Appointment.create(appointment_date: Date.today, user_id: user1, doctor_id: doctor1)
appointment2 = Appointment.create(appointment_date: Date.tomorrow, user_id: user1, doctor_id: doctor2)