Rails.application.routes.draw do
  get 'theses/index'

  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    root to: 'theses#index' # pages#home
    resources :users do
      resources :theses
    end
    resources :theses, only: :index
    resources :schools, only: [ :index, :show, :edit, :update ]
  end
end
