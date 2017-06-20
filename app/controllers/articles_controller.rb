class ArticlesController < ApplicationController
  def my_articles
    @articles = Article.all
  end

  def new_article
  end

  def create_article
    article = Article.new(title: params[:title], body: params[:body])
    article.save
    redirect_to "/my_article/#{article.id}"
  end

  def my_article
    @article = Article.find(params[:id])
  end

  def edit_my_article
    @article = Article.find(params[:id])
  end

  def modify_article
    article = Article.find(params[:id])
    article.update(title: params[:title], body: params[:body])
    redirect_to "/my_article/#{article.id}"
  end

  def my_article_list
    @articles = Article.all
  end
end
