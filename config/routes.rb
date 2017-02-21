Rails.application.routes.draw do
  get 'schools/index'

  get 'schools/show'

  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home'
    resources :users
  end
end
