require "test_helper"

class UsersLoginTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test "login with invalid information" do
    get login_path
    assert_template "sessions/new"
    post login_path, params: { session: { email:    @user.email,
                                            password: "invalid" } }
    assert_response :unprocessable_entity
    assert_template "sessions/new"
  end

  test "login with valid information" do
    post login_path, params: { session: { email:    @user.email,
                                          password: "password" } }
    assert_redirected_to root_path
    follow_redirect!
    assert_template root_path
    assert_select "a[href=?]", login_path, count: 0
    assert_select "a[href=?]", new_user_path, count: 0
    assert_select "a[href=?]", editor_path
    assert_select "a[href=?]", edit_user_path(@user)
    assert_select "a[href=?]", user_path(@user)
  end
end
