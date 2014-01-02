class PostsController < ApplicationController
before_action :set_post, :only => [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @post.type = params[:post_type]
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to posts_path
    end
  end

  def show
  end

  def edit
  end

  def update
    @post.update(post_params)
    redirect_to posts_path
  end

  private

  def set_post
    @post = Post.find_by(:id => params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :subtitle, :body, :cover_art, :preview, :type)
  end

end
