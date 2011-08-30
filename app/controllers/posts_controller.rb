class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.feed = current_feed
    @post = Post.save
    redirect_to_posts_path
  end

  def destroy
  end

end
