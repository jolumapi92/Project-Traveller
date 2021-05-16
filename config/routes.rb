Rails.application.routes.draw do
  devise_for :agents
  devise_for :travellers

  root to: 'pages#home'

  resources :agents, only: [:show]

  resources :locations do
    resources :activities
  end

  resources :travellers, only: [:index, :show] do
    resources :events
    resources :activities
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
