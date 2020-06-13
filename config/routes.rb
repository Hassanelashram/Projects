Rails.application.routes.draw do
  root 'pages#index'
  resources :lyrics
  resources :pages
  get '/weather', to: 'pages#weather' # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
