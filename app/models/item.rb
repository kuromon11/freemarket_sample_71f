class Item < ApplicationRecord
  #アソシエーション
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
  accepts_nested_attributes_for :shipping, allow_destroy: true
  # has_many :item_images ,dependent: :destroy
  # accepts_nested_attributes_for :item_images, allow_destroy: true

  #バリデーション
  validates :name, presence: true, length: { maximum: 40 }
  validates :i_text, presence: true, length: { maximum: 1000 }
  validates :category_id, presence: true
  validates :condition_id, presence: true
  validates :price, presence: true, inclusion: 300..9999999

end
