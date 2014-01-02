class IllustrationsController < ApplicationController
  before_action :set_illustration, only: [:show, :edit, :update, :destroy]

  def new
    @illustration = Post.new
  end

  def create
    @illustration = Post.new(illustration_params)
    @illustration.post_type = "illustration"
    if @illustration.save
      redirect_to "posts"
    end
  end

  def show
  end

  private

  def set_illustration
    @illustration = Post.find_by(:id => params[:id])
  end

  def illustration_params
    params.require(:post).permit(:title, :subtitle, :image, :cover_art)
  end
end
