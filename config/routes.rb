Rails.application.routes.draw do
  devise_for :users
  resources :portfolios
  resources :blogs
  resources :sites
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :models
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'page/index'
  root 'page#index'
  match '/blog', to: 'blog#index', via: [:get]
  match '/blog/new', to: 'blog#new', via: [:get]
  match '/contact', to: 'page#contact', via: [:get]
  match '/service', to: 'service#index', via: [:get]
  match '/service/site', to: 'service#site', via: [:get]
  match '/service/dizajn', to: 'service#dizajn', via: [:get]
  resources :blog, :case
end
