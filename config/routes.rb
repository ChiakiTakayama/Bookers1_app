Rails.application.routes.draw do
  # get 'books/new'#この記述はいらない？
  # get 'books' => 'books#index' #一覧画面の表示
  # post'books' => 'books#create' #indexに投稿機能を作るためのルート？
  # get 'books/:id' => 'books#show' #詳細画面へのルート
  # get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get'top' => 'homes#top'#resourcesメソッドに書き換える
  resources :books

end
