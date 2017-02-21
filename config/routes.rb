Rails.application.routes.draw do
  get 'users/show'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/destroy'

  get 'schools/index'

  get 'schools/show'

  devise_for :users

  scope '(:locale)', locale: /fr|en/ do
    root to: 'pages#home'
    resources :users
  end
end
