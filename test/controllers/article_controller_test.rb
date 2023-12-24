require "test_helper"

class ArticleControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
  end

  test "should get show" do
    get article_show_url
    assert_response :success
  end

  test "should get new" do
    get editor_path
    assert_response :success
  end
end
