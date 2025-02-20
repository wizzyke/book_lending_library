# frozen_string_literal: true

require 'application_system_test_case'

class UserFlowTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
    @book = books(:one)
    sign_in @user
  end

  test 'user can borrow and return a book' do
    visit books_path
    click_on @book.title
    click_on 'Borrow'

    assert_text 'Book borrowed successfully'

    visit profile_path
    assert_text @book.title
    click_on 'Return'

    assert_text 'Book returned successfully'
  end
end
