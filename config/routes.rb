Rails.application.routes.draw do
  
  root to: 'homes#top'  
  resources :books, only: [:new, :index, :show, :edit, :create, :update, :destroy]
  resources :users, only: [:edit, :update, :index, :show, ]
  get '/home/about' => 'homes#about', as: 'about'

end
