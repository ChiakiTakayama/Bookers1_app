class BooksController < ApplicationController
  def new #この記述いらない？？
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save#saveは新しいデータに対して有効。updateでは使えない
       flash[:notice] = "投稿が完了しました。"
       redirect_to book_path(@book.id)
    else
      @books = Book.all
      flash.now[:alert] = "投稿が失敗しました。"
      render :index
    end  
  end

  def show #詳細画面。投稿押したら飛んでくる画面
    @book = Book.find(params[:id])
    # redirect_to '/books'
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = "編集が完了しました。"
      redirect_to book_path(@book.id)
    else
      flash.now[:alert] = "編集が失敗しました。"
      render :edit 
    end  
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
