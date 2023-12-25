require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  def setup
    @user = users(:michael)
    # このコードは慣習的に正しくない
    @article = @user.articles.build(content: "Lorem ipsum")
  end

  test "should be valid" do
    assert_predicate(@article, :valid?)
  end

  test "user id should be present" do
    @article.user_id = nil
    assert_not @article.valid?
  end

  test "content should be present" do
    @article.content = "   "
    assert_not @article.valid?
  end

  test "content should be at most 800 characters" do
    @article.content = "a" * 801
    assert_not @article.valid?
  end

  test "order should be most recent first" do
    assert_equal articles(:most_recent), Article.first
  end
end
