class BooksController < ApplicationController
  def new #この記述いらない？？
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def create#投稿の保存機能。今は/topに飛ぶようにしているが詳細画面に飛ばすようにする
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
  end

  def show #詳細画面。投稿押したら飛んでくる画面
    @book = Book.find(params[:id])
  end

  def edit
    # @book = Book.find(params[:id])  showが正常に動いてない状態
  end
  # ここから先は保存機能と同時期に書いてる
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
