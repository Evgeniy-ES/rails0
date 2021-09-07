Rails.application.routes.draw do

  root to: "home#index"

  get :singup, to: 'users#new'
  get :login, to: 'sessions#new'
  get :logout, to: 'sessions#destroy'

  resources :users, only: :create

  resources  :test do
    resources :questions, shallow: true do
      resources :answers, shallow: true
    end

    member do
      post :start
    end
  end

  resources :test_passages, only: i%[show update] do
    member do
      get :result
    end
  end
end
