Rails.application.routes.draw do
  resources :dogs
  resources :employees

  post '/sort', to: 'dogs#sort'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
