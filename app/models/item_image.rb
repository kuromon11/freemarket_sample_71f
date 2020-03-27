class ItemImage < ApplicationRecord
  mount_uploader :image_url, ItemImageUploader
  belongs_to :item, optional: true
end
