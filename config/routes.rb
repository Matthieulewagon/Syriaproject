Rails.application.routes.draw do

  resources :users, only: [:index, :show, :edit, :update] do

    resources :requests, only: [:new, :create] do

      resources :dignoses, only: [:new, :create, :destroy]
    end
  end



  resource :doctor_dashboard, only: [:show] do

  resources :requests, only: [] do
    member do
        get 'accept'
        get 'decline'
      end
      resources :pharmacies
    end
  end

  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # ressources :doctors
end
