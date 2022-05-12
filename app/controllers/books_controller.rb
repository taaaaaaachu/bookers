class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    book = Book.new
    book.save
    redirect_to '/'

  end

  def index
    @books = Book.all
  end

  def show
  end

  def edit
  end

    private
  # ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
end