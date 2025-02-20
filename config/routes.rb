Rails.application.routes.draw do
  devise_for :users
  
  root "home#index"

  resources :books, only: [:index, :show]
  resource :profile, only: [:show]
  
  resources :borrowings, only: [:create, :destroy]
  
  post "books/:book_id/borrow", to: "borrowings#create", as: "borrow_book"
end

