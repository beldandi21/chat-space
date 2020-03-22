Rails.application.routes.draw do
  devise_for :users
  root 'groups#index'
  resources :users, only: [:index, :edit, :update]
<<<<<<< Updated upstream
  resources :groups, only: [:index, :new, :create, :edit, :update] do
=======
  resources :groups, only: [:new, :create, :edit, :update] do
>>>>>>> Stashed changes
    resources :messages, only: [:index, :create]
  end
end