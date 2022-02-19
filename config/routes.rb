Rails.application.routes.draw do

  get 'users/show'
  root 'homes#top'
  devise_for :users

  get 'books/new'
  post 'books' => 'book#create'

  resources :users, only: [:index, :show]
  resources :books, only: [:new, :create, :index, :show, :destroy]

end
