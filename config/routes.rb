Rails.application.routes.draw do

  root :to => 'welcomes#index'

  resources :user_sessions

  resources :blog_articles do
    resources :comments
  end

  resources :users do
    resources :blog_articles
  end

  get 'login' => 'user_sessions#new', :as => :login
  post 'logout' => 'user_sessions#destroy', :as => :logout

end
