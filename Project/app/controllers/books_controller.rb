
class BooksController < ApplicationController
  def new
  end
  
  def show
    @book = Books.find(params[:id])
  end
  
  def index
    @books = Books.paginate(page: params[:page])
  end
end
