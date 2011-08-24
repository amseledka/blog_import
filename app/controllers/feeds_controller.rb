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
    @feed = Feed.find(params[:id])
  end

  def update
    @feed = Feed.find(params[:id])

    if @feed.update_attributes(params[:feed])
        redirect_to feeds_path
      else
        render :action => "edit"
      end
  end

  def destroy
    @feed = Feed.find(params[:id])
    @feed.destroy
    
    redirect_to feeds_path
  end

end
