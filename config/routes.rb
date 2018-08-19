Rails.application.routes.draw do

  resources :dragons
  resources :users
  resources :abilities
  # resources :dragon_abilities

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
