class IllustrationsController < ApplicationController

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.post_type = "illustration"
    if @post.save
      redirect_to "posts"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :subtitle, :image, :cover_art)
  end
end
