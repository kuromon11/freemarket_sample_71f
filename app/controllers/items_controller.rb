class ItemsController < ApplicationController
  def index
  end

  def new
    @items = Item.new
  end

  def create
    Tweet.create(tweet_params)
  end
  
end
