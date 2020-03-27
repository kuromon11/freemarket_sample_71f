class ItemsController < ApplicationController

  
  def index
    @items = Item.includes(:images).order('created_at DESC')
  end

  def new
    @item = Item.new
    # @item_image = @item.item_images.build
    # @item.shipping.build
    @item.build_shipping
    @item.item_images.build
    # 4.times{@item.item_images.build}
    # @item = @item.build_item_image
    # @item_image = @item.item_images.build
    # @shipping = Select.where(fee_burgen_id: params[:feeburgen_id], service_id: params[:service_id], area_id: params[:area_id], handlingtime_id: params[:handlingtime_id])
  end

  def create
    # binding.pry
    # @item = Item.create!(item_params)
    @item = Item.new(item_params)
    #出品中
    @item.trading_status = 0
    if @item.save
      # params[:item_images]['image_url'].each do |image_url|
        # @item.item_images.create(image_url: image_url, item_id: @item.id)
      # end
      redirect_to root_path
    else
      render action: :new
      # redirect_to new_item_path(@item) unless @item.valid?
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :i_text, :condition_id, :category_id, :brand_id, :price, shipping_attributes: [:fee_burgen_id, :service_id, :area_id, :handling_time_id], item_images_attributes: [:image_url]).merge(user_id: current_user.id)
  end

end
