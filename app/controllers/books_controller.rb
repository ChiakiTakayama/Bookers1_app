class BooksController < ApplicationController
  def new
  end

  def index
    @book = Book.new
  end

  def create#投稿の保存機能。今は/topに飛ぶようにしている
    book = Book.new(book_params)
    book.save
    redirect_to '/top'
  end

  def show #詳細画面。投稿押したら飛んでくる画面
  end

  def edit
  end
  # ここから先は保存機能と同時期に書いてる
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
