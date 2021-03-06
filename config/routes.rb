Rails.application.routes.draw do
  root to: 'articles#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :articles  do #This told Rails that we were going to follow the RESTful conventions for this model named Article. 
    resources :comments
  end
  resources :tags
end
