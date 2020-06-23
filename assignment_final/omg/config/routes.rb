Rails.application.routes.draw do
  root 'home#index'
  # get 'home/index'

  get '/members', to: 'members#index', as: 'members'
  
  get '/albums', to: 'albums#index', as: 'albums'

  get '/lyrics', to: 'lyrics#index', as: 'lyrics'

end
