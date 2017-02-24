Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

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

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :theses, only: [ :index, :show, :update, :create, :destroy ]
    end
  end
end
