Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #resources :users
    get 'users', to: 'users#index', as: 'users'
    post 'users', to: 'users#create'
    get 'users/new', to: 'users#new', as: "new_user"
    patch 'users/:id', to: 'users#edit', as: "edit_user"
    put 'users/:id', to: 'users#update'
    delete 'users/:id', to: 'users#delete'
end
