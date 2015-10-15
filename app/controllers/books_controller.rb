class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book
    else
      render :new
    end

  end

  def show
    @book = Book.find(params[:id])
  end

  def destroy
    @book = Book.delete(params[:id])
    respond_to do |format|
      format.html { redirect_to '/' }
      format.json {render json: @book}
      format.js
    end
  end

  private
  def book_params
    params.require(:book).permit(:title, :author, :description, :book_text)
  end
end
