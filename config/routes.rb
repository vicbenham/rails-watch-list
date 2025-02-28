Rails.application.routes.draw do

  get "up" => "rails/health#show", as: :rails_health_check

  # resources :movies

  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]

end
