Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }

  root 'home#index'
  resources :tours do
    get :filter
  end
  resources :home, only: :index
  resources :countries
end
