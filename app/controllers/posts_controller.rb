class PostsController < ApplicationController
  def index
    @post = Post.all[rand(Post.count)-1]
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    if @post.save
      redirect_to post_path(@post)
    else
      render "new"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
