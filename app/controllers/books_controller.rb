class BooksController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = book.new(book_params)
    if @book.save
      redirect_to book_paht(@book.id)
    else
      render :new
    end
  end

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update 
    book = Book.find(params[:id])
    book.update(book_params)
    #redirect_to 
  end
    
    def destroy
      book = Book.find(params[:id])
      book.destroy
      #redirect_to 
    end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
