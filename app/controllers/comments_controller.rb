class CommentsController < ApplicationController
  before_action :set_post

  def create
    # @post = Post.find(params[:post_id])
    # set_post method for above
    @comment = @post.comments.create(comment_params)
    redirect_to @post
  end

  def edit
    # @post = Post.find(params[:post_id])
    # set_post method for above
    @comment = Comment.find(params[:id])
  end

  def update
    # find comments
    @comment = Comment.find(params[:id])
    # update comment with parameters
    @comment.update(comment_params)
    # before_action :set_post sets @post below
    redirect_to @post
  end

  def destroy
    #find comment, assign it to instance var,
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to @post
  end
  
  private
  def comment_params
    params.require(:comment).permit(:name, :content)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
end
