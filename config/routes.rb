Rails.application.routes.draw do
  get 'todos/index'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :todos, only: [:index, :show] do
    resources :todousers, only: [:create, :destroy]
  end

  root to: 'todos#index'

end
