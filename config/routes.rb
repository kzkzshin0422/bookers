Rails.application.routes.draw do
  resources :books, only: [:index,:show,:edit,:create]
  patch 'books/:id' => 'books#update',as:'update_book'
  delete 'books/:id' => 'books#destroy',as:'destroy_book'
  root to: 'homes#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
