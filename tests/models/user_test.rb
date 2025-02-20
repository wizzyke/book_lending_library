require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(email: "test@example.com", password: "password123")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "should require email" do
    @user.email = ""
    assert_not @user.valid?
  end

  test "should require password" do
    @user.password = ""
    assert_not @user.valid?
  end
end

