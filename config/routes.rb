Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :memberships, only: [:create, :index, :show]
  resources :gyms
  resources :clients

end
