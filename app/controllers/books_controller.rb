class BooksController < ApplicationController
  def index
    @books = Book.all
    @book = Book.new
  end

  def show
  end

  def create
    @books = Book.all
    @book =Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book)
    else
      render action: :index
    end
  end

  def destroy
  end

  private

  def book_params
    params.require(:book).permit(:title, :body)
  end
  
end
