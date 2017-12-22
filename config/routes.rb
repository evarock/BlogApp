Rails.application.routes.draw do
  devise_for :users

  resources :users

  resources :blogs do
    resources :posts
  end

  match '/users/:id', to: 'users#make_admin' , via: 'post'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'blogs#index'
end
