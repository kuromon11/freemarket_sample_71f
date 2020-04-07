class PurchaseController < ApplicationController

  require 'payjp'
  before_action :set_card, only:[:index, :pay]

  def index
    card = Card.where(user_id: current_user.id).first
    @item=Item.includes(:item_images).find(params[:id])
    # @user=User.find(params[:id])
    #Cardテーブルは前回記事で作成、テーブルからpayjpの顧客IDを検索
    if card.blank?
      #登録された情報がない場合にカード登録画面に移動
      redirect_to controller: "card", action: "new"
    else
      Payjp.api_key = Rails.application.credentials.payjp[:PAYJP_PRIVATE_KEY]
      #保管した顧客IDでpayjpから情報取得
      customer = Payjp::Customer.retrieve(card.customer_id)
      #保管したカードIDでpayjpから情報取得、カード情報表示のためインスタンス変数に代入
      @default_card_information = customer.cards.retrieve(card.card_id)
    end
  end

  def show
  end

  def pay
    card = Card.where(user_id: current_user.id).first
    Payjp.api_key = 'sk_test_66370c9c8e7b6acb3b00b7e5'
    Payjp::Charge.create(
    amount: @item.price, #支払金額を入力（itemテーブル等に紐づけても良い）
    customer: card.customer_id, #顧客ID
    currency: 'jpy', #日本円
  )
  redirect_to action: 'done' #完了画面に移動
  end

  def done
    @item=Item.find(params[:id])
    @item.update(trading_status:'1') 
  end
  
  private

  def set_card
    @card = Card.where(user_id: current_user.id).first if Card.where(user_id: current_user.id).present?
  end

end
