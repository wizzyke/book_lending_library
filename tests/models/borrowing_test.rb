# frozen_string_literal: true

require 'test_helper'

class BorrowingTest < ActiveSupport::TestCase
  def setup
    @user = users(:one) # Assuming a fixture
    @book = books(:one)
    @borrowing = Borrowing.new(user: @user, book: @book, due_date: 2.weeks.from_now)
  end

  test 'should be valid' do
    assert @borrowing.valid?
  end

  test 'should require a user' do
    @borrowing.user = nil
    assert_not @borrowing.valid?
  end

  test 'should require a book' do
    @borrowing.book = nil
    assert_not @borrowing.valid?
  end

  test 'should set due date to 2 weeks from now' do
    @borrowing.save
    assert_equal @borrowing.due_date, 2.weeks.from_now.to_date
  end
end
