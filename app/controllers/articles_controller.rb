class ArticlesController < ApplicationController
  def my_articles
    @articles = Article.all
  end

  def new_article
  end

  def create_article
    article = Article.new(title: params[:title], body: params[:body])
    article.save
  end

end
