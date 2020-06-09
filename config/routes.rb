Rails.application.routes.draw do
  root 'lyrics#index'
  resources :lyrics # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
