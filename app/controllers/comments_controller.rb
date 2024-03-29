class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(params[:comment])
  	@comment.save

  	redirect_to @post
  end

  def destroy
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.find(params[:id])
  	@comment.delete

  	redirect_to @post
  end
end
