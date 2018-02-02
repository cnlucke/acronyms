Rails.application.routes.draw do
  resources :admins
  # [:index, :show, :edit, :create, :new, :update, :delete]
  # get '/admins', to: 'admins#index'
  # get '/admins/:id', to: 'admins#show'
  # get '/admins/:id/edit', to: 'admins#edit'
  # get '/admins/new', to: 'admins#new'
  # post '/admins', to: 'admins#create'
  # patch '/admins/:id', to: 'admins#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/students', to: 'students#index'
end
