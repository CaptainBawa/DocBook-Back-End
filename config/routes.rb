# frozen_string_literal: true

Rails.application.routes.draw do
    devise_for :users, controllers: { 
      sessions: 'users/sessions',
      registrations: 'users/registrations'
     }


 
  resources :users do
    resources :doctors
  end
  resources :addresses
  resources :appointments
  resources :doctor_addresses
end
