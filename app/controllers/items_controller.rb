class ItemsController < ApplicationController
  def index
    # @items = Item.includes(:images).order('created_at DESC')
  end

  def new
    @items = Item.new
  end

  def create
    Tweet.create(tweet_params)
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end
