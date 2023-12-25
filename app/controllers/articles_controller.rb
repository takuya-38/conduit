class ArticlesController < ApplicationController
  def new
  end

  def home
    @articles = Article.all.paginate(page: params[:page])
  end

  def show
  end
end
