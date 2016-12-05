Rails.application.routes.draw do

  get 'requests/create'

  get 'requests/new'

  root to: 'pages#home'

devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' },
    controllers: { registrations: 'registrations' }


  resources :users, only: [:index, :show, :edit, :update] do

    resources :requests, only: [:new, :create] do

      resources :dignoses, only: [:new, :create, :destroy]
    end
  end
  resource :doctor_dashboard, only: [:show] do
    resources :pharmacies

    resources :requests, only: [] do
      member do
        get 'accept'
        get 'decline'
      end
    end
  end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ressources :doctors
end
