Rails.application.routes.draw do

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get'top' => 'homes#top'#resourcesメソッドに書き換える
  patch 'books/:id' => 'books#update', as: 'update_book'#resourcesメソッドで対応できない？
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'#resourcesメソッドで対応できない？
  resources :books

end
