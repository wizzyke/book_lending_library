
class BooksController < ApplicationController
  before_action :authenticate_user!, only: [:show] # Ensure only logged-in users can borrow books

  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end
end
