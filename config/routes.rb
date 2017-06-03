Rails.application.routes.draw do
  
  root 'users#index'
  get 'units/group/:id' => 'units#group', as: :units_group
  
  resources :authors, :users, :units, except: [:destroy]
  resources :temp_tasks, only: [:new, :create]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
