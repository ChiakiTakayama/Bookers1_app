class BooksController < ApplicationController
  def new #この記述いらない？？
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to book_path(book.id)
    # @book = Book.new(book_params)
    # if @book.save
      # redirect_to book_path(@book.id)
    # else
      # render :index
    # end  
  end

  def show #詳細画面。投稿押したら飛んでくる画面
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to book_path(book.id)
  end
  
  def destroy #destroyしたらbooks一覧画面にリンクように
    book = Book.find(params[:id])
    book.destroy
    redirect_to'/books'
  end
  # ここから先は保存機能と同時期に書いてる
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
