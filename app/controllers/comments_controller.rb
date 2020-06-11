class CommentsController < ApplicationController
    def create
        @article = Article.find(params[:article_id]) # обозначаем 
        @article.comments.create(comment_params) # создаем коментарий
    
        redirect_to article_path(@article)
    end    
    
    private 

    def comment_params
      params.require(:comment).permit(:author, :body)
    end
end
