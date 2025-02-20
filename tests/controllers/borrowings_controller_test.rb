class BorrowingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @book = books(:one)
    sign_in @user # Devise helper

    @borrowing = borrowings(:one)
  end

  test "should create borrowing" do
    assert_difference('Borrowing.count', 1) do
      post borrowings_url, params: { borrowing: { book_id: @book.id } }
    end
    assert_redirected_to book_url(@book)
  end

  test "should prevent borrowing an already borrowed book" do
    post borrowings_url, params: { borrowing: { book_id: @book.id } }
    assert_no_difference('Borrowing.count') do
      post borrowings_url, params: { borrowing: { book_id: @book.id } }
    end
  end

  test "should return book" do
    delete borrowing_url(@borrowing)
    assert_redirected_to profile_url
    assert_nil Borrowing.find_by(id: @borrowing.id) # Check that it was deleted
  end
end
