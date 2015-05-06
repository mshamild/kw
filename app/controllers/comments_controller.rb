class CommentsController < ApplicationController
	
def create
   @article = Article.find(params[:article_id])
   @comment = @article.comments.create(comment_params)
   
   # автоматически определить комментатора
   @comment.user_name = current_user.name
   @comment.user_surname = current_user.surname
   @comment.user_id = current_user.id
   @comment.save

   redirect_to article_path(@article)
end

def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
end
 
private
	def comment_params
    	params.require(:comment).permit(:user_name, :user_surname, :user_id, :content, :article_id)
  	end
end
