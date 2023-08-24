# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users do
    resources :doctors
  end
  resources :addresses
  resources :appointments
  resources :doctor_addresses
end
