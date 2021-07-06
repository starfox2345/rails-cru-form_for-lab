Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :genres, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :artists, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :songs, only: [:index, :show, :new, :create, :edit, :update, :destroy]

end
