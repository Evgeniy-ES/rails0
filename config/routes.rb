Rails.application.routes.draw do
  resources  :test do
    resources :questions, shallow: true
  end
end
