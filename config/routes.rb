Rails.application.routes.draw do
  resources :participations
  get 'users/show'

  get 'pages/dashboard'

  get 'pages/sign_up_senior'

  get 'pages/sign_up_student'

  get 'pages/home'

  get 'pages/about'

  get 'pages/contact'

  get 'pages/dashboard'

  match '/contacts',     to: 'contacts#new',             via: 'get'
resources "contacts", only: [:new, :create]

  post 'participation/new' => 'participations#create'
  resources :pages
  devise_for :users, :controllers => { registrations: "registrations" }
  get 'users/:id' => 'users#show', as: :user

  resources :meals do
    collection do
      get 'me'
    end
  end


      get '/dashboard' => 'participations#me'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'

  devise_scope :user do
    get '/signout', to: 'devise/sessions#destroy', as: :signout
  end
end
