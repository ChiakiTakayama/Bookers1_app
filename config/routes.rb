Rails.application.routes.draw do
  get 'books/new'#newはいらない？
  get 'books/index'
  post'books' => 'books#create' #indexに投稿機能を作るためのルート？
  get 'books/show'
  get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get'top' => 'homes#top'#resourcesメソッドに書き換える
  
end
