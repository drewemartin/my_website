Rails.application.routes.draw do

  resources :letters

  root :to => 'welcomes#index'

  resources :user_sessions
  resources :abouts

  resources :blog_articles do
    resources :comments, only:[:new, :create, :destroy]
  end

  resources :users 

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
