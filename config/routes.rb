# frozen_string_literal: true

Rails.application.routes.draw do
    devise_for :users, controllers: { 
      sessions: 'users/sessions',
      registrations: 'users/registrations'
     }

  root to: 'doctors#index'
 
  resources :users
  resources :doctors
  resources :addresses
  resources :appointments
  resources :doctor_addresses
end
