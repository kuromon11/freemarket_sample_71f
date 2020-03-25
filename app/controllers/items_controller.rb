class ItemsController < ApplicationController

  
  def index
    @items = Item.includes(:images).order('created_at DESC')
  end

  def new
    @item = Item.new
    @shipping = Shipping.new
    # @results = Address.where('itemcondition IN(?) OR  IN(?) OR ', params[:prefecture, :])
    # Post.where('content LIKE(?) OR title LIKE(?)', "%#{search}%", "%#{search}%")
  end

  def create
    binding.pry
    # Item.create(item_params)
    @item = Item.new(item_params)
    @shipping = Shipping.new(shipping_params[:shipping])
    @item.save

    redirect_to root_path
    # if @item.save
    #   redirect_to root_path
    # else
    #   render :new
    # end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  # def item_params
  #   params.require(:item).permit(:name, :i_text, :condition_id, :price, :category_id, :brand_id, :shipping_id, shipping: [:fee_burgen_id, :service_id, :area_id, :handling_time_id]).merge(user_id: current_user.id)
  # end

  # def shipping_params
  #   params.require(:item).permit(shipping:[:fee_burgen, :service, :area, :handling_time]).merge(user_id: current_user.id)
  # end
  def item_params
    params.require(:item).permit(:name, :i_text, :condition_id, :price, :category_id, :brand_id, :shipping_id).merge(user_id: current_user.id)
  end   

  def shipping_params
    params.require(:item).permit(shipping:[:fee_burgen_id, :service_id, :area_id, :handling_time_id]).merge(user_id: current_user.id)
  end   


end
