Rails.application.routes.draw do
  devise_for :users
  resources :meals do
    collection do
      get 'me'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "meals#index"
end
