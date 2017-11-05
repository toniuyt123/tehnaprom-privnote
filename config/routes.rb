Rails.application.routes.draw do
  resources :notes
  get '/notes/:slug/info', to: 'notes#info'
  get '/notes/:slug', to: 'notes#show'

  post '/messages/api', to: 'notes#create'

  root 'notes#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
