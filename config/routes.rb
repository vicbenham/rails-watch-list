Rails.application.routes.draw do

  root "list#index"

  resources :lists do
    resources :bookmarks, only: %i[new create]
  end
  resources :bookmarks, only: %i[destroy]

end
