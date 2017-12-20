Rails.application.routes.draw do
  devise_for :users

  resources :users, except: [ :new, :create ] do
    resources :blog do
      resources :posts
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'blogs#index'
end
