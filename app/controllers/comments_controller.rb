class CommentsController < ApplicationController
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.build(params.require(:comment).permit(:body))

    if @comment.save
      redirect_to article_path(article)
    else
      render 'articles/show'
        #si article tiene errores
        #  muestra el view again
        #fin
    end
  end
end
