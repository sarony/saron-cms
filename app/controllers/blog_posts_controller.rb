class BlogPostsController < ApplicationController

  before_action :set_blog_post, only: [:edit, :destory, :update, :show]

  def index
    @blog_posts = Post.where(post_type: "blog_post")
  end

  def new
    @blog_post = Post.new
  end

  def create
    @blog_post = Post.new(blog_post_params)
    @blog_post.post_type = "blog_post"
    @blog_post.save
    redirect_to posts_path
  end

  def edit
  end

  def update
    @blog_post = Post.find_by(:id => params[:id])
    @blog_post.update(blog_post_params)
  end

  def show
  end

  private

  def set_blog_post
    @blog_post = Post.find_by(:id => params[:id])
  end

  def blog_post_params
    params.require(:post).permit(:title, :subtitle, :body, :preview, :cover_art)
  end
end
