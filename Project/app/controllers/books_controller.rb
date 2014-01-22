class BooksController < ApplicationController
  def new
  end
  
  def show
    @book = Book.all
  end
end
