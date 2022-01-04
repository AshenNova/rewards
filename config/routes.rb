Rails.application.routes.draw do
  resources :reward2s
  resources :clones
  resources :rewards
  root 'index#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
