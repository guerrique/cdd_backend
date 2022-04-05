Rails.application.routes.draw do
  get 'search_entries/index', as: 'search'
  resources :docs
  resources :directors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
