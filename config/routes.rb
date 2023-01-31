Rails.application.routes.draw do
  resources :book_reviews
  get 'users/show'
  get 'static_pages/home'
  root to: 'static_pages#home'
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  devise_for :users
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
