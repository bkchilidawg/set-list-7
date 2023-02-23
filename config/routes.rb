Rails.application.routes.draw do
  # get "/songs", to: "songs#index"
  # get "/songs/:id", to: "songs#show"
  # get "/artists/:artist_id/songs", to: "artist_songs#index"
  # get "/artists", to: "artists#index"
  # get "/artists/new", to: "artists#new"
  # post "/artists", to: "artists#create"
  # get "/artists/:id/edit", to: "artists#edit"
  # patch "/artists/:id", to: "artists#update"
  # delete "/artists/:id", to: "artists#destroy"
  # get "/playlists", to: "playlists#index"
  resources :artists do
    resources :songs, only: [:index], controller: "artist_songs"
  end

  resources :songs

  resources :playlists, only: [:index]
end
