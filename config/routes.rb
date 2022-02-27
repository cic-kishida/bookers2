Rails.application.routes.draw do

#  get 'users/show'
#  root 'homes#top'
#  devise_for :users
#  get 'books/new'
#  post 'books' => 'book#create'
#  resources :users, only: [:index, :show]
#  resources :books, only: [:new, :create, :index, :show, :destroy]



#  get 'users/show'
  devise_for :users
  root 'homes#top'

#  get 'books/new'
#  post 'books' => 'book#create'

  resources :users, only: [:index, :show]
  resources :books, only: [:new, :create, :index, :show, :destroy]



# これは、めしてろ
#  root 'homes#top'
#  devise_for :users
#  resources :post_images, only: [:new, :create, :index, :show, :destroy]
#  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
#    resource :favorites, only: [:create, :destroy]
#    resources :post_comments, only: [:create, :destroy]
#  end

end
