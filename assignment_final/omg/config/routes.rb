Rails.application.routes.draw do
  root 'home#index'

  get '/members', to: 'members#index', as: 'members'
  get '/members/:id', to: 'members#show', as: 'member'
  get '/members/:id/new', to: 'comments#new', as: 'comment_new'
  post '/members/:id/create', to: 'comments#create', as: 'comment_create'
  delete '/members/:id/:cid', to: 'comments#destroy', as: 'comment_delete' 


  get '/albums', to: 'albums#index', as: 'albums'
  get '/lyrics', to: 'lyrics#index', as: 'lyrics'

  # resources :comments
end
