
class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def show
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.new(book_params)    
    if @book.save
      redirect_to @book
    else 
      render 'new'
    end
  end

  def index
    @books = Book.paginate(page: params[:page])
  end
  
  
  private  
  
  def book_params
    params.require(:book).permit!#(:name, :author, :publisher, :edition, :isbn, :description)
  end
  

end
