# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  root 'users/items#index'
  # root 'administration/items#index'

  get '/home', to: 'home#landing_page'

  namespace 'users' do
    get '/', to: 'items#index'
    resources :items
  end

  namespace 'administration' do
    get '/', to: 'items#index'

    resources :items
    resources :profiles do
      member do
        get '/send_email', to: "profiles#send_email", as: :send_email
      end
    end
  end
end
