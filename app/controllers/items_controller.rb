class ItemsController < ApplicationController

  def index
    @items = Item.includes(:item_images).order('created_at DESC')
    @item_images = ItemImage.new
  end

  def new
    @item = Item.new
    @item.build_shipping
    @item.item_images.build

    #@parents = Category.where(ancestry: nil)
    @category_parent_array = ["---"]
    Category.where(ancestry: nil).each do |parent|
      @category_parent_array << parent.name
    end
  end

  def get_category_children
    #選択された親カテゴリーに紐付く子カテゴリーの配列を取得
    @category_children = Category.find_by(name: "#{params[:parent_name]}", ancestry: nil).children

    # @category_children = Category.find(params[:parent_id]).children
  end

  def get_category_grandchildren
    #選択された子カテゴリーに紐付く孫カテゴリーの配列を取得
    @category_grandchildren = Category.find("#{params[:child_id]}").children
  end

  def create
    @item = Item.new(item_params)
    #出品中
    @item.trading_status = 0
    if @item.save
      redirect_to root_path
    else
      @category_parent_array = ["---"]
      Category.where(ancestry: nil).each do |parent|
        @category_parent_array << parent.name
      end
      render 'new'
    end
  end

  def show
    @item=Item.find(params[:id])
  end


  def show
    @item=Item.find(params[:id])

  def edit

  end
  

  def update
  end

  def destroy
  end

  def category
    @children = Category.find(params[:parent_id]).children
      respond_to do |format|
        format.html
        format.json
      end
  end
  
  private
  def item_params
    params.require(:item).permit(:name, :i_text, :condition_id, :category_id, :brand_id, :price, shipping_attributes: [:fee_burgen_id, :service_id, :area_id, :handling_time_id], item_images_attributes: [:image_url]).merge(user_id: current_user.id)
  end

end
