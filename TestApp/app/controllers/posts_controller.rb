class PostsController < ApplicationController

  def new
  end

  def create
    @post = Post.new(post_params)

    @post.save
    redirect_to @post
  end

  def show
    @post = Post.find(params[:id])
  end

  def index
    @post = Post.all
  end

  def by_tags
  
  end

  private
  def post_params
    params.require(:post).permit(:title, :user, :text, :tag1, :tag2, :tag3, :tag4, :tag5, :avatar)
  end



end
