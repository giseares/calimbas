Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "dive", to: "pages#dive"
  get "project", to: "pages#project"
  get "coach", to: "pages#coach"
  get "aboutus", to: "pages#aboutus"
  get "education", to: "pages#education"
  resources :portfolios, only: :index
  resources :articles
  resources :cubicacions, only:  %i[index new create]
    
end
