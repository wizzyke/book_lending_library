class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
    @borrowed_books = current_user.borrowings.includes(:book)
  end
end

