class CommentsController < ApplicationController
  def new
  @post = Post.find_by(id: [params{:id}])
  @comment = Comment.new
  end

  def show
  @post = Post.find([params{:id}])
  end

  def create
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :comment_body, :create_at, :post_id)
  end
end
