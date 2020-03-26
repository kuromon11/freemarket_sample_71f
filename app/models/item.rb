class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :deliveryfeeburgen
  belongs_to_active_hash :deliveryservice
  belongs_to_active_hash :deliveryarea
  belongs_to_active_hash :deliveryhandlingtime
  belongs_to_active_hash :itemcondition

  belongs_to :category, optional: true 
  belongs_to :brand, optional: true 
  belongs_to :user

  has_one :shipping
  accepts_nested_attributes_for :shipping
  # has_many :reviews
  # has_many :item_images ,dependent: :destroy
  # has_one :order
  # belongs_to :sizes
  # has_many :likes ,dependent: :destroy
  # has_many :coments ,dependent: :destroy
  # has_many :messages ,dependent: :destroy

  validates :name, presence: true, length: { maximum: 40 }
  validates :i_text, presence: true, length: { maximum: 1000 }
  validates
  validates

end
