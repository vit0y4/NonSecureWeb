Rails.application.routes.draw do
  get 'sessions/new'

  root 'welcome#index'

  get 'signup'  => 'users#new'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'
  get    'users/search'  => 'users#search', as: 'search'
  post    'users/search'  => 'users#search'
  resources :users
end
