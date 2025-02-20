# frozen_string_literal: true

class BorrowingsController < ApplicationController
  before_action :authenticate_user!

  def create
    book = Book.find(params[:book_id])

    if book.available
      current_user.borrowings.create(book: book, due_date: 2.weeks.from_now, returned: false)
      book.update(available: false)
      redirect_to books_path, notice: "#{book.title} has been borrowed successfully!"
    else
      redirect_to book_path(book), alert: 'This book is already borrowed.'
    end
  end

  def destroy
    borrowing = current_user.borrowings.find(params[:id])
    borrowing.book.update(available: true)
    borrowing.destroy
    redirect_to profile_path, notice: 'Book returned successfully!'
  end
end
