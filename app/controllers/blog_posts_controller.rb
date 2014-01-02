class BlogPostsController < ApplicationController

  before_action :set_post, only: [:edit, :destory, :update, :show]

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.post_type = "blog_post"
    @post.save
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :subtitle, :body, :preview, :cover_art, :type)
  end
end
