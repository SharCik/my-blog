class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	comment_params = params.require(:comment).permit(:post_id, :text)
  	@comment = @post.comments.build(comment_params)
  	@comment.save

  	redirect_to @post
  end

  def destroy
  	@comment = Comment.find(params[:id])
  	@comment.destroy

  	redirect_to @comment.post
  end
end
