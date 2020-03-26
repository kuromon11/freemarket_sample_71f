class ItemImage < ApplicationRecord
  belongs_to :item, optional: true
  # validates :image_url, presence: true, length: {minimum: 1, maximum: 4}
end
