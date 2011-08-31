class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(params[:post])
    @json_response = current_user.post_to_wall(@post.wall_message, @post.wall_attachment)
    render :text => @json_response.to_json
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy 
    redirect_to posts_path
  end

end
