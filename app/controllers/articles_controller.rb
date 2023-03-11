class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!#, only: %i[index show new create]
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end
end
