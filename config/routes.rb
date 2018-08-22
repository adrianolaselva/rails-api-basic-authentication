Rails.application.routes.draw do

  get :token, controller: 'application'


  resources :comments, except: [:new, :edit]
  resources :posts, except: [:new, :edit]
  resources :users, except: [:new, :edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
