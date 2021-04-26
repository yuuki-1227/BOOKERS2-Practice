Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'homes#top'

  resources :users ,only:[:index, :show, :edit, :update]
  resources :books ,only:[:index, :create, :show, :update, :edit, :destroy]


end
