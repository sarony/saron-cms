class PostsController < ApplicationController

  before_action :set_post, only: [:edit, :destory, :update, :show]

  def index
    @posts = Post.all
  end

  private

  def set_post
    Post.find_by(:id => params[:id])
  end
  
end
