class ItemImage < ApplicationRecord
  mount_uploader :image_url, ItemImageUploader
  belongs_to :item, optional: true
  # validates :image_url, presence: true, length: { minimum: 1, maximum: 4 }
end
