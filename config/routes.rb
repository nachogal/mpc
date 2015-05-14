Rails.application.routes.draw do

  devise_for :users, :skip => [:registrations]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    patch 'users/:id' => 'devise/registrations#update', :as => 'user_registration'
  end

  get 'users/:id/portfolio' => 'users#portfolio'

  resources :posts

  resources :user, only: [:show, :edit] do
    collection do
      patch :update_password
    end
  end

  resources :contacts, only: [:new, :create]
  root 'pages#home'

  get 'pages/initiate'
  get 'pages/accelerate'
  get 'pages/implement'
end
