class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def index
  end

  def edit
    @comment = Comment.find(params[:id])
    @post = @comment.post
  end

  def update
    @comment = Comment.find(params[:id])
    @post = Post.find(params[:post_id])
    @comment.update(comment_params)
    redirect_to root_url
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :comment_body, :create_at, :post_id)
  end
end
