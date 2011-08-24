class FeedsController < ApplicationController
  def index
    @feeds = current_user.feeds
  end

  def new
    @feed = Feed.new
  end

  def create
    @feed = Feed.new(params[:feed])
    @feed.user = current_user
    @feed.save
    redirect_to feeds_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
