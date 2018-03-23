Rails.application.routes.draw do
  devise_for :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'pages/index'
  root 'pages#index'
  match '/blog', to: 'blogs#index', via: [:get]
  match '/portfolio', to: 'cases#index', via: [:get]
  match '/contact', to: 'pages#contact', via: [:get]
  match '/services', to: 'services#index', via: [:get]
  resources :blogs, :cases, :services
end
