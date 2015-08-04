class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(post_params)
    redirect_to posts_path
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy

    # AM: Do you need to pass a variable into this path helper if you're just going back to the index?
    redirect_to posts_path(@post)
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  private
  def post_params
    params.require(:post).permit(:author, :post_body, :created_at)
  end
end
