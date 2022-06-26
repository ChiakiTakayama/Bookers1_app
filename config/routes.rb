Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get'top' => 'homes#top'#resourcesメソッドに書き換える
  patch 'books/:id' => 'books#update', as: 'update_book'
  resources :books

end
