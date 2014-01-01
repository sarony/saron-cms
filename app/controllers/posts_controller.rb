class PostsController < ApplicationController

  before_action :set_post, only: [:edit, :destory, :update, :show]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to posts_path
  end

  private

  def set_post
    Post.find_by(:id => params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :subtitle, :body, :preview, :cover_art)
  end
  
end
