class CommentsController < ApplicationController
  def create
    article = Article.find(params[:article_id])
    comment = article.comments.build(params.require(:comment).permit(:body))

    comment.save

    redirect_to article_path(article)
  end
end
