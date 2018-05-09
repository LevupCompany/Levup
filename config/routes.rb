Rails.application.routes.draw do
  resources :documents
  resources :steps
  devise_for :users, controllers:{
      sessions: 'users/sessions'
  }
  resources :portfolios
  resources :blogs
  resources :sites
  scope '/cabinet' do
    resources :messages, :orders
  end
  mount Ckeditor::Engine => '/ckeditor'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'page/index'
  root 'page#index'
  match '/contact', to: 'page#contact', via: [:get]
  match '/service', to: 'service#index', via: [:get]
  match '/service', to: 'service#create', via: [:post]
  match '/service/site', to: 'service#site', via: [:get]
  match '/service/dizajn', to: 'service#dizajn', via: [:get]
  match '/service/mobile', to: 'service#mobile', via: [:get]
  match '/service/business', to: 'service#business', via: [:get]
  resources :blog, :case
end
