Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :owners
  resources :pets

  # GET /pets/:id/fancy_route
  get '/pets/:id/fancy_route', to: 'pets#fancy', as: 'fancy_pet'
end
