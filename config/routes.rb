Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  ActiveAdmin.routes(self)
  root to: 'pages#home'

devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }


  resources :users, only: [:index, :show, :edit, :update] do

    resources :requests, only: [:new, :create, :destroy] do

      resources :dignoses, only: [:new, :create, :destroy]
    end
  end

  resource :patient_dashboard, only: [:show, :destroy]
  resource :doctor_dashboard, only: [:show, :destroy] do
    resources :chat_sessions, only: :show do
      post 'approve'
      post 'new_message'
    end
    resources :pharmacies

    resources :requests, only: [] do
      member do
        post 'accept'
        post 'decline'
      end
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ressources :doctors
end
