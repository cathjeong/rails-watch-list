Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'lists#index'
  resources :lists do
    resources :bookmarks
  end
  # separate line for bookmark destroy
  resources :bookmarks, only: :destroy
  # path: '/bookmarks/:id', as: :lists#delete
end
