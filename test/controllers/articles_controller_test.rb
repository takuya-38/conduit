require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get show" do
    get show_path
    assert_response :success
  end

  test "should get new" do
    get editor_path
    assert_response :success
  end
end
