Rails.application.routes.draw do
  devise_for :users
  root to: 'drugs#index'

  get "/drug/:code_cis", to: 'drugs#show', as: :drug_show
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
