Rails.application.routes.draw do
  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home'
    resources :users
  end

  resources :theses, only: [ :index, :show, :new, :edit ]
  resources :users, only: [ :index, :show ]
  resources :schools, only: [ :index, :show ]

end
