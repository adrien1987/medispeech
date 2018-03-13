Rails.application.routes.draw do
  get 'profiles/show'

  devise_for :users,
    controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'drugs#index'

  get "/drugs/:code_cis", to: 'drugs#show', as: :drug_show
  get "/drugs/:code_cis/reviews/new", to: 'reviews#new', as: :review_new
  post "/drugs/:code_cis/reviews", to: 'reviews#create', as: :review_create
  get "/profiles", to: 'profiles#show', as: :profile
  get "/drugs/:code_cis/favorites/", to: 'favorites#put_in_favorite', as: :put_in_favorite
  get "/drugs/:code_cis/favorites/now", to: 'favorites#now', as: :now

  resources :reviews, only: [:edit, :update]

  get 'search', to: 'drugs#search'

end
