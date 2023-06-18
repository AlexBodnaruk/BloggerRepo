Rails.application.routes.draw do

  resources :categories
  resources :posts, except: [:update]
  patch '/posts/:id', to: 'posts#update', as: 'update_post'
  root 'main#getBlog'
  
  post '/like', to: 'main#like' 
  post '/comment', to: 'main#comment'
  delete '/deleteComment', to: 'main#deleteComment'
  
  devise_for :users, controllers: { registrations: 'users/registrations' }
end
