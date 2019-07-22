Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
  
      resources :users, only: [:index, :show, :create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      
      resources :teams, only: [:index, :show]
      resources :leagues, only: [:index, :show]

      get '/leagues/:criteria/teams', to: 'leagues#league_teams'
      # http://localhost:3000/league/36/teams => La Liga
    end
  end
end
