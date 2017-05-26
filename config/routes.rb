Rails.application.routes.draw do
  
  root 'users#index'
  
  resources :authors, :users, :units, except: [:destroy]
  resources :temp_tasks, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
