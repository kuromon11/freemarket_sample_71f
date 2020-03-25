class Item < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :brand
  # belongs_to :sizes
  # has_many :likes ,dependent: :destroy
  # has_many :coments ,dependent: :destroy
  # has_many :messages ,dependent: :destroy
  belongs_to :shipping
  # accepts_nested_attributes_for :shipping
  # has_many :reviews
  # has_many :item_images ,dependent: :destroy
  # has_one :order


  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :deliveryfeeburgen
  belongs_to_active_hash :deliveryservice
  belongs_to_active_hash :deliveryarea
  belongs_to_active_hash :deliveryhandingtime
  belongs_to_active_hash :itemcondition
  # validates :name
end