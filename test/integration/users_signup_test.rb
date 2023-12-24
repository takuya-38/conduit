require "test_helper"

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get register_path
    assert_no_difference "User.count" do
      post users_path, params: { user: { name:  "",
                                          email: "user@invalid",
                                          password:              "foo",
                                          password_confirmation: "bar" } }
    end
    assert_response :unprocessable_entity
    assert_template "users/new"
  end

  test "valid signup information" do
    assert_difference "User.count", 1 do
      post users_path, params: { user: { name:  "Example User",
                                          email: "user@example.com",
                                          password:              "foobar00" } }
    end
    follow_redirect!
    assert_template "article/home"
  end
end
