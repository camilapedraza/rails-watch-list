Rails.application.routes.draw do
  get 'bookmarks/new'
  get 'bookmarks/create'
  get 'bookmarks/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :lists, only: %i[index show new create] do
    resources :bookmarks, only: %i[new create]
  end
  # delete 'bookmarks/:id', to: 'bookmarks#destroy'
  resources :bookmarks, only: [:destroy]
end
