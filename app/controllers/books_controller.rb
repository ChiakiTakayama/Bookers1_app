class BooksController < ApplicationController
  def new
  end

  def index
    @book = Book.new
  end

  def show #詳細画面。投稿押したら飛んでくる画面
  end

  def edit
  end
end
