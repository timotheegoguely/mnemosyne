Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount Attachinary::Engine => "/attachinary"

  get 'theses/index'

  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home' # theses#index
    resources :users do
      resources :theses do
        member do
          post :bookmark
        end
      end
    end
    resources :theses, only: [:index, :new, :create]
    resources :schools, only: [ :index, :show, :edit, :update ]
  end
end
