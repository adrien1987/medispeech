Rails.application.routes.draw do
  devise_for :users
  root to: 'drugs#index'

  get "/drugs/:code_cis", to: 'drugs#show', as: :drug_show
  get "/drugs/:code_cis/favorites/:query", to: 'favorites#put_in_favorite', as: :put_in_favorite
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
