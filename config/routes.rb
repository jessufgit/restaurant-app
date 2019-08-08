Rails.application.routes.draw do

  resources :recommendations do
    resources :comments
  end

  root 'recommendations#index'
end
