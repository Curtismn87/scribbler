class CommentsController < ApplicationController
  def new
    @post = Post.find(params[:post_id])
    @comment = Comment.new
  end

  # def show
  #   @post = Post.find([params{:id}])
  # end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to post_path(@post)
  end

  def index
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :comment_body, :create_at, :post_id)
  end
end
